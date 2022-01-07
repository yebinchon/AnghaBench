
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int AtAbort_Twophase () ;

__attribute__((used)) static void
AtProcExit_Twophase(int code, Datum arg)
{

 AtAbort_Twophase();
}
