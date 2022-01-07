
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CleanupTempFiles (int,int) ;

__attribute__((used)) static void
AtProcExit_Files(int code, Datum arg)
{
 CleanupTempFiles(0, 1);
}
