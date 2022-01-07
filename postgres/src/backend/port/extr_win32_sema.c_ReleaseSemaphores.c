
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CloseHandle (int ) ;
 int free (int *) ;
 int * mySemSet ;
 int numSems ;

__attribute__((used)) static void
ReleaseSemaphores(int code, Datum arg)
{
 int i;

 for (i = 0; i < numSems; i++)
  CloseHandle(mySemSet[i]);
 free(mySemSet);
}
