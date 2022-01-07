
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fprintf (int ,char*) ;
 int getchar () ;
 scalar_t__ send (int,char const*,int,int ) ;
 int stderr ;

__attribute__((used)) static void *stdin_thread(void *param) {
  int ch, sock = *(int *) param;

  while ((ch = getchar()) != EOF) {
    unsigned char c = (unsigned char) ch;
    if (send(sock, (const char *) &c, 1, 0) < 0) {
      fprintf(stderr, "Failed to send byte to the socket");
    }
  }
  return ((void*)0);
}
