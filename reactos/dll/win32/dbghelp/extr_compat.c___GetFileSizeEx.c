
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__* PLARGE_INTEGER ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int fseek (int *,int ,int) ;
 int ftell (int *) ;

BOOL __GetFileSizeEx(HANDLE file, PLARGE_INTEGER fsize)
{
    if (fseek((FILE*)file, 0, 2) == -1)
        return FALSE;
    fsize->QuadPart = ftell((FILE*)file);
    return TRUE;
}
