
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_BUFFER_SIZE ;
 char* calloc (int,int) ;
 int flags ;
 int free (char*) ;
 int rax (char*,int,int ) ;
 int read (int ,char*,int) ;

__attribute__((used)) static int use_stdin() {
 char *buf = calloc (1, STDIN_BUFFER_SIZE + 1);
 int l;
 if (!buf) {
  return 0;
 }
 if (!(flags & (1<<14))) {
  for (l = 0; l >= 0 && l < STDIN_BUFFER_SIZE; l++) {

   int n = read (0, buf + l, STDIN_BUFFER_SIZE - l);
   if (n < 1) {
    break;
   }
   l += n;
   if (buf[l - 1] == 0) {
    l--;
    continue;
   }
   buf[n] = 0;

   buf[STDIN_BUFFER_SIZE] = '\0';
   if (!rax (buf, l, 0)) {
    break;
   }
   l = -1;
  }
 } else {
  l = 1;
 }
 if (l > 0) {
  rax (buf, l, 0);
 }
 free (buf);
 return 0;
}
