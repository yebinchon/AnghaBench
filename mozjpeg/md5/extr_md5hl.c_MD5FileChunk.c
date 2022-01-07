
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;
typedef int buffer ;
typedef int MD5_CTX ;


 int BUFSIZ ;
 char* MD5End (int *,char*) ;
 int MD5Init (int *) ;
 int MD5Update (int *,unsigned char*,int) ;
 int O_BINARY ;
 int O_RDONLY ;
 int SEEK_SET ;
 int _open (char const*,int) ;
 int close (int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int open (char const*,int) ;
 int read (int,unsigned char*,scalar_t__) ;

char *MD5FileChunk(const char *filename, char *buf, off_t ofs, off_t len)
{
  unsigned char buffer[BUFSIZ];
  MD5_CTX ctx;
  struct stat stbuf;
  int f, i, e;
  off_t n;

  MD5Init(&ctx);



  f = open(filename, O_RDONLY);

  if (f < 0)
    return 0;
  if (fstat(f, &stbuf) < 0)
    return 0;
  if (ofs > stbuf.st_size)
    ofs = stbuf.st_size;
  if ((len == 0) || (len > stbuf.st_size - ofs))
    len = stbuf.st_size - ofs;
  if (lseek(f, ofs, SEEK_SET) < 0)
    return 0;
  n = len;
  i = 0;
  while (n > 0) {
    if (n > sizeof(buffer))
      i = read(f, buffer, sizeof(buffer));
    else
      i = read(f, buffer, n);
    if (i < 0)
      break;
    MD5Update(&ctx, buffer, i);
    n -= i;
  }
  e = errno;
  close(f);
  errno = e;
  if (i < 0)
    return 0;
  return (MD5End(&ctx, buf));
}
