
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int FieldCount; } ;
struct TYPE_4__ {int * Line; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef int LONG ;



LONG
InfGetFieldCount(PINFCONTEXT Context)
{
    if ((Context == ((void*)0)) || (Context->Line == ((void*)0)))
        return 0;

    return ((PINFCACHELINE)Context->Line)->FieldCount;
}
