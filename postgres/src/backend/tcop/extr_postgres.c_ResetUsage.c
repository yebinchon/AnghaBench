
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUSAGE_SELF ;
 int Save_r ;
 int Save_t ;
 int getrusage (int ,int *) ;
 int gettimeofday (int *,int *) ;

void
ResetUsage(void)
{
 getrusage(RUSAGE_SELF, &Save_r);
 gettimeofday(&Save_t, ((void*)0));
}
