
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int close (int) ;
 int free (char*) ;
 long lseek (int,int ,int ) ;
 char* malloc (long) ;
 int open (char const*,int ) ;
 int read (int,char*,long) ;

__attribute__((used)) static char *slurp(const char *file) {
 int ret, fd;
 char *text;
 long sz;
 if (!file || !*file)
  return ((void*)0);
 fd = open (file, O_RDONLY);
 if (fd == -1) {
  return ((void*)0);
 }
 sz = lseek (fd, 0, SEEK_END);
 if (sz < 0){
  close (fd);
  return ((void*)0);
 }
 lseek (fd, 0, SEEK_SET);
 text = malloc (sz + 1);
 if (!text) {
  close (fd);
  return ((void*)0);
 }
 ret = read (fd, text, sz);
 if (ret != sz) {
  free (text);
  text = ((void*)0);
 } else {
  text[sz] = 0;
 }
 close (fd);
 return text;
}
