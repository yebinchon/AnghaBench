
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int AbortOutOfAnyTransaction () ;
 int LockReleaseAll (int ,int) ;
 int USER_LOCKMETHOD ;

__attribute__((used)) static void
ShutdownPostgres(int code, Datum arg)
{

 AbortOutOfAnyTransaction();





 LockReleaseAll(USER_LOCKMETHOD, 1);
}
