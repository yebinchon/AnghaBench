
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
struct stat {int st_size; } ;
struct dirent {char* d_name; } ;
typedef int off_t ;
typedef int fullpath ;
typedef int buf ;
typedef scalar_t__ XLogSegNo ;
typedef int XLogRecPtr ;
typedef int DIR ;


 int InvalidXLogRecPtr ;
 scalar_t__ IsCompressXLogFileName (char*) ;
 scalar_t__ IsPartialCompressXLogFileName (char*) ;
 scalar_t__ IsPartialXLogFileName (char*) ;
 scalar_t__ IsXLogFileName (char*) ;
 int MAXPGPATH ;
 int O_RDONLY ;
 int PG_BINARY ;
 int SEEK_END ;
 int WalSegSz ;
 int XLogFromFileName (char*,scalar_t__*,scalar_t__*,int) ;
 int XLogSegNoOffsetToRecPtr (scalar_t__,int ,int,int ) ;
 char* basedir ;
 int close (int) ;
 int close_destination_dir (int *,char*) ;
 int errno ;
 int exit (int) ;
 int * get_destination_dir (char*) ;
 scalar_t__ lseek (int,int ,int ) ;
 int open (char*,int,int ) ;
 int pg_log_error (char*,char*,...) ;
 int pg_log_warning (char*,char*,int) ;
 int read (int,char*,int) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static XLogRecPtr
FindStreamingStart(uint32 *tli)
{
 DIR *dir;
 struct dirent *dirent;
 XLogSegNo high_segno = 0;
 uint32 high_tli = 0;
 bool high_ispartial = 0;

 dir = get_destination_dir(basedir);

 while (errno = 0, (dirent = readdir(dir)) != ((void*)0))
 {
  uint32 tli;
  XLogSegNo segno;
  bool ispartial;
  bool iscompress;




  if (IsXLogFileName(dirent->d_name))
  {
   ispartial = 0;
   iscompress = 0;
  }
  else if (IsPartialXLogFileName(dirent->d_name))
  {
   ispartial = 1;
   iscompress = 0;
  }
  else if (IsCompressXLogFileName(dirent->d_name))
  {
   ispartial = 0;
   iscompress = 1;
  }
  else if (IsPartialCompressXLogFileName(dirent->d_name))
  {
   ispartial = 1;
   iscompress = 1;
  }
  else
   continue;




  XLogFromFileName(dirent->d_name, &tli, &segno, WalSegSz);
  if (!ispartial && !iscompress)
  {
   struct stat statbuf;
   char fullpath[MAXPGPATH * 2];

   snprintf(fullpath, sizeof(fullpath), "%s/%s", basedir, dirent->d_name);
   if (stat(fullpath, &statbuf) != 0)
   {
    pg_log_error("could not stat file \"%s\": %m", fullpath);
    exit(1);
   }

   if (statbuf.st_size != WalSegSz)
   {
    pg_log_warning("segment file \"%s\" has incorrect size %d, skipping",
          dirent->d_name, (int) statbuf.st_size);
    continue;
   }
  }
  else if (!ispartial && iscompress)
  {
   int fd;
   char buf[4];
   int bytes_out;
   char fullpath[MAXPGPATH * 2];
   int r;

   snprintf(fullpath, sizeof(fullpath), "%s/%s", basedir, dirent->d_name);

   fd = open(fullpath, O_RDONLY | PG_BINARY, 0);
   if (fd < 0)
   {
    pg_log_error("could not open compressed file \"%s\": %m",
        fullpath);
    exit(1);
   }
   if (lseek(fd, (off_t) (-4), SEEK_END) < 0)
   {
    pg_log_error("could not seek in compressed file \"%s\": %m",
        fullpath);
    exit(1);
   }
   r = read(fd, (char *) buf, sizeof(buf));
   if (r != sizeof(buf))
   {
    if (r < 0)
     pg_log_error("could not read compressed file \"%s\": %m",
         fullpath);
    else
     pg_log_error("could not read compressed file \"%s\": read %d of %zu",
         fullpath, r, sizeof(buf));
    exit(1);
   }

   close(fd);
   bytes_out = (buf[3] << 24) | (buf[2] << 16) |
    (buf[1] << 8) | buf[0];

   if (bytes_out != WalSegSz)
   {
    pg_log_warning("compressed segment file \"%s\" has incorrect uncompressed size %d, skipping",
          dirent->d_name, bytes_out);
    continue;
   }
  }


  if ((segno > high_segno) ||
   (segno == high_segno && tli > high_tli) ||
   (segno == high_segno && tli == high_tli && high_ispartial && !ispartial))
  {
   high_segno = segno;
   high_tli = tli;
   high_ispartial = ispartial;
  }
 }

 if (errno)
 {
  pg_log_error("could not read directory \"%s\": %m", basedir);
  exit(1);
 }

 close_destination_dir(dir, basedir);

 if (high_segno > 0)
 {
  XLogRecPtr high_ptr;






  if (!high_ispartial)
   high_segno++;

  XLogSegNoOffsetToRecPtr(high_segno, 0, WalSegSz, high_ptr);

  *tli = high_tli;
  return high_ptr;
 }
 else
  return InvalidXLogRecPtr;
}
