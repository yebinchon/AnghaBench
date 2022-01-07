
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int alarm (int) ;
 int handle_sig_alarm ;
 int pqsignal (int ,int ) ;

__attribute__((used)) static void
setalarm(int seconds)
{
 pqsignal(SIGALRM, handle_sig_alarm);
 alarm(seconds);
}
