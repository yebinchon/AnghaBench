
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSEGV ;
 int buf ;
 int longjmp (int ,int) ;
 int unblock_signal (int ) ;

__attribute__((used)) static void segfault_handler(int signum) {
  (void)signum;
  unblock_signal(SIGSEGV);
  longjmp(buf, 1);
}
