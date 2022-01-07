
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XLogLongPageHeader ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int xlp_seg_size; } ;
typedef TYPE_2__ PGAlignedXLogBlock ;


 int Assert (int) ;
 scalar_t__ IsValidWalSegSize (int) ;
 int O_RDWR ;
 char* WALFilePath ;
 int WalSegSz ;
 scalar_t__ XLOG_BLCKSZ ;
 int close (int) ;
 scalar_t__ debug ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int open (char*,int ,int ) ;
 char* progname ;
 scalar_t__ read (int,int ,scalar_t__) ;
 int stderr ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static bool
SetWALSegSize(void)
{
 bool ret_val = 0;
 int fd;
 PGAlignedXLogBlock buf;

 Assert(WalSegSz == -1);

 if ((fd = open(WALFilePath, O_RDWR, 0)) < 0)
 {
  fprintf(stderr, "%s: could not open WAL file \"%s\": %s\n",
    progname, WALFilePath, strerror(errno));
  return 0;
 }

 errno = 0;
 if (read(fd, buf.data, XLOG_BLCKSZ) == XLOG_BLCKSZ)
 {
  XLogLongPageHeader longhdr = (XLogLongPageHeader) buf.data;

  WalSegSz = longhdr->xlp_seg_size;

  if (IsValidWalSegSize(WalSegSz))
  {

   ret_val = 1;
  }
  else
   fprintf(stderr,
     "%s: WAL segment size must be a power of two between 1MB and 1GB, but the WAL file header specifies %d bytes\n",
     progname, WalSegSz);
 }
 else
 {




  if (errno != 0)
  {
   if (debug)
    fprintf(stderr, "could not read file \"%s\": %s\n",
      WALFilePath, strerror(errno));
  }
  else
  {
   if (debug)
    fprintf(stderr, "not enough data in file \"%s\"\n",
      WALFilePath);
  }
 }

 fflush(stderr);

 close(fd);
 return ret_val;
}
