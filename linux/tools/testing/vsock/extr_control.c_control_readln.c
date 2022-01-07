
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 int EXIT_FAILURE ;
 int TIMEOUT ;
 int control_fd ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 char* realloc (char*,size_t) ;
 int recv (int ,char*,int,int ) ;
 int stderr ;
 int timeout_begin (int ) ;
 int timeout_check (char*) ;
 int timeout_end () ;

char *control_readln(void)
{
 char *buf = ((void*)0);
 size_t idx = 0;
 size_t buflen = 0;

 timeout_begin(TIMEOUT);

 for (;;) {
  ssize_t ret;

  if (idx >= buflen) {
   char *new_buf;

   new_buf = realloc(buf, buflen + 80);
   if (!new_buf) {
    perror("realloc");
    exit(EXIT_FAILURE);
   }

   buf = new_buf;
   buflen += 80;
  }

  do {
   ret = recv(control_fd, &buf[idx], 1, 0);
   timeout_check("recv");
  } while (ret < 0 && errno == EINTR);

  if (ret == 0) {
   fprintf(stderr, "unexpected EOF on control socket\n");
   exit(EXIT_FAILURE);
  }

  if (ret != 1) {
   perror("recv");
   exit(EXIT_FAILURE);
  }

  if (buf[idx] == '\n') {
   buf[idx] = '\0';
   break;
  }

  idx++;
 }

 timeout_end();

 return buf;
}
