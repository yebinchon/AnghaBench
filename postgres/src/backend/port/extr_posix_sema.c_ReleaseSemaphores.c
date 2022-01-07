
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int PG_SEM_REF (scalar_t__) ;
 int PosixSemaphoreKill (int ) ;
 int free (int *) ;
 int * mySemPointers ;
 int numSems ;
 scalar_t__ sharedSemas ;

__attribute__((used)) static void
ReleaseSemaphores(int status, Datum arg)
{
 int i;
}
