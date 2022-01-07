
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprint_in_signal ;
 int dprintf2 (char*,int ,int) ;
 int getpid () ;

void sig_chld(int x)
{
 dprint_in_signal = 1;
 dprintf2("[%d] SIGCHLD: %d\n", getpid(), x);
 dprint_in_signal = 0;
}
