
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_sig_received ;
 int signal (int,void (*) (int)) ;

__attribute__((used)) static void signal_handler(int sig_num) {
  signal(sig_num, signal_handler);
  s_sig_received = sig_num;
}
