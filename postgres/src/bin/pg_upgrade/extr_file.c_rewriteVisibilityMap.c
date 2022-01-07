
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ data_checksum_version; } ;
struct TYPE_8__ {TYPE_1__ controldata; } ;
struct TYPE_7__ {char* data; } ;
struct TYPE_6__ {int pd_checksum; } ;
typedef char PageHeaderData ;
typedef TYPE_2__* PageHeader ;
typedef TYPE_3__ PGAlignedBlock ;
typedef scalar_t__ BlockNumber ;


 int BITS_PER_BYTE ;
 int BITS_PER_HEAPBLOCK ;
 int BLCKSZ ;
 scalar_t__ ENOSPC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int PG_BINARY ;
 int SizeOfPageHeaderData ;
 int VISIBILITYMAP_ALL_VISIBLE ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int memcpy (char*,char*,int) ;
 TYPE_4__ new_cluster ;
 int open (char const*,int,int ) ;
 int pg_checksum_page (char*,scalar_t__) ;
 int pg_fatal (char*,char const*,char const*,char const*,...) ;
 int pg_file_create_mode ;
 scalar_t__ read (int,char*,int) ;
 int strerror (scalar_t__) ;
 int write (int,char*,int) ;

void
rewriteVisibilityMap(const char *fromfile, const char *tofile,
      const char *schemaName, const char *relName)
{
 int src_fd;
 int dst_fd;
 PGAlignedBlock buffer;
 PGAlignedBlock new_vmbuf;
 ssize_t totalBytesRead = 0;
 ssize_t src_filesize;
 int rewriteVmBytesPerPage;
 BlockNumber new_blkno = 0;
 struct stat statbuf;


 rewriteVmBytesPerPage = (BLCKSZ - SizeOfPageHeaderData) / 2;

 if ((src_fd = open(fromfile, O_RDONLY | PG_BINARY, 0)) < 0)
  pg_fatal("error while copying relation \"%s.%s\": could not open file \"%s\": %s\n",
     schemaName, relName, fromfile, strerror(errno));

 if (fstat(src_fd, &statbuf) != 0)
  pg_fatal("error while copying relation \"%s.%s\": could not stat file \"%s\": %s\n",
     schemaName, relName, fromfile, strerror(errno));

 if ((dst_fd = open(tofile, O_RDWR | O_CREAT | O_EXCL | PG_BINARY,
        pg_file_create_mode)) < 0)
  pg_fatal("error while copying relation \"%s.%s\": could not create file \"%s\": %s\n",
     schemaName, relName, tofile, strerror(errno));


 src_filesize = statbuf.st_size;







 while (totalBytesRead < src_filesize)
 {
  ssize_t bytesRead;
  char *old_cur;
  char *old_break;
  char *old_blkend;
  PageHeaderData pageheader;
  bool old_lastblk;

  if ((bytesRead = read(src_fd, buffer.data, BLCKSZ)) != BLCKSZ)
  {
   if (bytesRead < 0)
    pg_fatal("error while copying relation \"%s.%s\": could not read file \"%s\": %s\n",
       schemaName, relName, fromfile, strerror(errno));
   else
    pg_fatal("error while copying relation \"%s.%s\": partial page found in file \"%s\"\n",
       schemaName, relName, fromfile);
  }

  totalBytesRead += BLCKSZ;
  old_lastblk = (totalBytesRead == src_filesize);


  memcpy(&pageheader, buffer.data, SizeOfPageHeaderData);







  old_cur = buffer.data + SizeOfPageHeaderData;
  old_blkend = buffer.data + bytesRead;
  old_break = old_cur + rewriteVmBytesPerPage;

  while (old_break <= old_blkend)
  {
   char *new_cur;
   bool empty = 1;
   bool old_lastpart;


   memcpy(new_vmbuf.data, &pageheader, SizeOfPageHeaderData);


   old_lastpart = old_lastblk && (old_break == old_blkend);

   new_cur = new_vmbuf.data + SizeOfPageHeaderData;


   while (old_cur < old_break)
   {
    uint8 byte = *(uint8 *) old_cur;
    uint16 new_vmbits = 0;
    int i;


    for (i = 0; i < BITS_PER_BYTE; i++)
    {
     if (byte & (1 << i))
     {
      empty = 0;
      new_vmbits |=
       VISIBILITYMAP_ALL_VISIBLE << (BITS_PER_HEAPBLOCK * i);
     }
    }


    new_cur[0] = (char) (new_vmbits & 0xFF);
    new_cur[1] = (char) (new_vmbits >> 8);

    old_cur++;
    new_cur += BITS_PER_HEAPBLOCK;
   }


   if (old_lastpart && empty)
    break;


   if (new_cluster.controldata.data_checksum_version != 0)
    ((PageHeader) new_vmbuf.data)->pd_checksum =
     pg_checksum_page(new_vmbuf.data, new_blkno);

   errno = 0;
   if (write(dst_fd, new_vmbuf.data, BLCKSZ) != BLCKSZ)
   {

    if (errno == 0)
     errno = ENOSPC;
    pg_fatal("error while copying relation \"%s.%s\": could not write file \"%s\": %s\n",
       schemaName, relName, tofile, strerror(errno));
   }


   old_break += rewriteVmBytesPerPage;
   new_blkno++;
  }
 }


 close(dst_fd);
 close(src_fd);
}
