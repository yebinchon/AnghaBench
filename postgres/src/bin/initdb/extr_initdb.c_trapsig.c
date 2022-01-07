
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caught_signal ;
 int pqsignal (int,void (*) (int)) ;

__attribute__((used)) static void
trapsig(int signum)
{

 pqsignal(signum, trapsig);
 caught_signal = 1;
}
