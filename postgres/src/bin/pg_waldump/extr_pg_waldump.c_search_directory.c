
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {char const* d_name; } ;
typedef TYPE_1__* XLogLongPageHeader ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int xlp_seg_size; } ;
typedef int Size ;
typedef TYPE_2__ PGAlignedXLogBlock ;
typedef int DIR ;


 int IsValidWalSegSize (int ) ;
 scalar_t__ IsXLogFileName (char const*) ;
 int WalSegSz ;
 int XLOG_BLCKSZ ;
 int close (int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int fatal_error (char*,char const*,int,...) ;
 int ngettext (char*,char*,int ) ;
 int open_file_in_directory (char const*,char const*) ;
 int * opendir (char const*) ;
 int read (int,int ,int) ;
 struct dirent* readdir (int *) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static bool
search_directory(const char *directory, const char *fname)
{
 int fd = -1;
 DIR *xldir;


 if (fname != ((void*)0))
  fd = open_file_in_directory(directory, fname);






 else if ((xldir = opendir(directory)) != ((void*)0))
 {
  struct dirent *xlde;

  while ((xlde = readdir(xldir)) != ((void*)0))
  {
   if (IsXLogFileName(xlde->d_name))
   {
    fd = open_file_in_directory(directory, xlde->d_name);
    fname = xlde->d_name;
    break;
   }
  }

  closedir(xldir);
 }


 if (fd >= 0)
 {
  PGAlignedXLogBlock buf;
  int r;

  r = read(fd, buf.data, XLOG_BLCKSZ);
  if (r == XLOG_BLCKSZ)
  {
   XLogLongPageHeader longhdr = (XLogLongPageHeader) buf.data;

   WalSegSz = longhdr->xlp_seg_size;

   if (!IsValidWalSegSize(WalSegSz))
    fatal_error(ngettext("WAL segment size must be a power of two between 1 MB and 1 GB, but the WAL file \"%s\" header specifies %d byte",
          "WAL segment size must be a power of two between 1 MB and 1 GB, but the WAL file \"%s\" header specifies %d bytes",
          WalSegSz),
       fname, WalSegSz);
  }
  else
  {
   if (errno != 0)
    fatal_error("could not read file \"%s\": %s",
       fname, strerror(errno));
   else
    fatal_error("could not read file \"%s\": read %d of %zu",
       fname, r, (Size) XLOG_BLCKSZ);
  }
  close(fd);
  return 1;
 }

 return 0;
}
