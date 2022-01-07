
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* FirstField; int * Key; } ;
struct TYPE_6__ {int * Line; } ;
struct TYPE_5__ {int * Data; } ;
typedef TYPE_2__* PINFCONTEXT ;
typedef TYPE_3__* PINFCACHELINE ;
typedef int * PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN
InfGetData (
    PINFCONTEXT Context,
    PCHAR *Key,
    PCHAR *Data)
{
    PINFCACHELINE CacheKey;

    if ((Context == ((void*)0)) || (Context->Line == ((void*)0)) || (Data == ((void*)0)))
    {

        return FALSE;
    }

    CacheKey = (PINFCACHELINE)Context->Line;
    if (Key != ((void*)0))
        *Key = CacheKey->Key;

    if (Data != ((void*)0))
    {
        if (CacheKey->FirstField == ((void*)0))
        {
            *Data = ((void*)0);
        }
        else
        {
            *Data = CacheKey->FirstField->Data;
        }
    }

    return TRUE;
}
