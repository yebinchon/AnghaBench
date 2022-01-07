
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int ssize_t ;
typedef int buf ;


 scalar_t__ ENOENT ;
 int O_WRONLY ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 char* strerror (scalar_t__) ;
 int vsnprintf (char*,int,char*,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static bool vmaybe_write_file(bool enoent_ok, char *filename, char *fmt, va_list ap)
{
 char buf[4096];
 int fd;
 ssize_t written;
 int buf_len;

 buf_len = vsnprintf(buf, sizeof(buf), fmt, ap);
 if (buf_len < 0) {
  printf("vsnprintf failed: %s\n",
      strerror(errno));
  return 0;
 }
 if (buf_len >= sizeof(buf)) {
  printf("vsnprintf output truncated\n");
  return 0;
 }

 fd = open(filename, O_WRONLY);
 if (fd < 0) {
  if ((errno == ENOENT) && enoent_ok)
   return 1;
  return 0;
 }
 written = write(fd, buf, buf_len);
 if (written != buf_len) {
  if (written >= 0) {
   printf("short write to %s\n", filename);
   return 0;
  } else {
   printf("write to %s failed: %s\n",
    filename, strerror(errno));
   return 0;
  }
 }
 if (close(fd) != 0) {
  printf("close of %s failed: %s\n",
   filename, strerror(errno));
  return 0;
 }
 return 1;
}
