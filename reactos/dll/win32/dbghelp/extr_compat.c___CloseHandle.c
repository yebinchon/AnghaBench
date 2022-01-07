
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BOOL ;


 int TRUE ;
 int fclose (int ) ;

BOOL __CloseHandle(HANDLE handle)
{
    fclose(handle);
    return TRUE;
}
