
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int error; TYPE_1__* list; } ;
struct TYPE_7__ {int obj_class; } ;
struct TYPE_6__ {int count; } ;
typedef scalar_t__ HPDF_Page ;
typedef TYPE_2__ HPDF_Obj_Header ;
typedef TYPE_3__* HPDF_Destination ;
typedef int HPDF_BOOL ;


 scalar_t__ HPDF_Array_GetItem (TYPE_3__*,int ,int ) ;
 int HPDF_FALSE ;
 int HPDF_INVALID_PAGE ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_DESTINATION ;
 int HPDF_Page_Validate (scalar_t__) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_Destination_Validate (HPDF_Destination dst)
{
    HPDF_Obj_Header *header = (HPDF_Obj_Header *)dst;
    HPDF_Page target;

    if (!dst || header->obj_class !=
                (HPDF_OCLASS_ARRAY | HPDF_OSUBCLASS_DESTINATION))
        return HPDF_FALSE;


    if (dst->list->count < 2)
        return HPDF_FALSE;

    target = (HPDF_Page)HPDF_Array_GetItem (dst, 0, HPDF_OCLASS_DICT);
    if (!HPDF_Page_Validate (target)) {
     HPDF_SetError (dst->error, HPDF_INVALID_PAGE, 0);
        return HPDF_FALSE;
    }

    return HPDF_TRUE;
}
