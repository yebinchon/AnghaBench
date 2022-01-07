
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int TRUE ;
 int free (void*) ;

BOOL __UnmapViewOfFile(const void* data)
{
    free((void *)data);
    return TRUE;
}
