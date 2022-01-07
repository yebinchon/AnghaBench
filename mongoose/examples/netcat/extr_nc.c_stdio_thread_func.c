
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
typedef int ch ;


 int EOF ;
 int getchar () ;
 int mg_broadcast (struct mg_mgr*,int ,int*,int) ;
 int on_stdin_read ;
 int s_received_signal ;

__attribute__((used)) static void *stdio_thread_func(void *param) {
  struct mg_mgr *mgr = (struct mg_mgr *) param;
  int ch;


  while ((ch = getchar()) != EOF) {
    mg_broadcast(mgr, on_stdin_read, &ch, sizeof(ch));
  }
  s_received_signal = 1;

  return ((void*)0);
}
