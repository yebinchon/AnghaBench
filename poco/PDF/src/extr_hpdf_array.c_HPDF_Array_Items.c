
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* list; } ;
struct TYPE_4__ {int count; } ;
typedef int HPDF_UINT ;
typedef TYPE_2__* HPDF_Array ;



HPDF_UINT
HPDF_Array_Items (HPDF_Array array)
{
    return array->list->count;
}
