
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int IpcSemaphoreKill (int ) ;
 int free (int *) ;
 int * mySemaSets ;
 int numSemaSets ;

__attribute__((used)) static void
ReleaseSemaphores(int status, Datum arg)
{
 int i;

 for (i = 0; i < numSemaSets; i++)
  IpcSemaphoreKill(mySemaSets[i]);
 free(mySemaSets);
}
