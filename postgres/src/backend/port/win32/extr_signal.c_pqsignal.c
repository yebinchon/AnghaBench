
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqsigfunc ;


 int PG_SIGNAL_COUNT ;
 int SIG_ERR ;
 int * pg_signal_array ;

pqsigfunc
pqsignal(int signum, pqsigfunc handler)
{
 pqsigfunc prevfunc;

 if (signum >= PG_SIGNAL_COUNT || signum < 0)
  return SIG_ERR;
 prevfunc = pg_signal_array[signum];
 pg_signal_array[signum] = handler;
 return prevfunc;
}
