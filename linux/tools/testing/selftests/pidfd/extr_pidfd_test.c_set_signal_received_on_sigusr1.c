
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int signal_received ;

__attribute__((used)) static void set_signal_received_on_sigusr1(int sig)
{
 if (sig == SIGUSR1)
  signal_received = 1;
}
