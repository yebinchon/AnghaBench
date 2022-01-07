
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pthread_t ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 int INFINITE ;
 int THREADS ;
 int TRUE ;
 int WaitForMultipleObjects (int,scalar_t__*,int ,int ) ;
 scalar_t__ _beginthreadex (int *,int ,int (*) (int *),int *,int ,unsigned int*) ;
 int fn (int *) ;
 int pthread_create (scalar_t__*,int *,int (*) (int *),int *) ;
 int pthread_join (scalar_t__,int *) ;

int main ()
{
 fn(((void*)0));


 return 0;
}
