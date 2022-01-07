
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sigfunc ;


 int * php_signal4 (int,int *,int,int ) ;

Sigfunc *php_signal(int signo, Sigfunc *func, int restart)
{
 return php_signal4(signo, func, restart, 0);
}
