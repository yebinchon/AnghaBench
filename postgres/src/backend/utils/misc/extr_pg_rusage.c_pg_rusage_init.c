
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv; int ru; } ;
typedef TYPE_1__ PGRUsage ;


 int RUSAGE_SELF ;
 int getrusage (int ,int *) ;
 int gettimeofday (int *,int *) ;

void
pg_rusage_init(PGRUsage *ru0)
{
 getrusage(RUSAGE_SELF, &ru0->ru);
 gettimeofday(&ru0->tv, ((void*)0));
}
