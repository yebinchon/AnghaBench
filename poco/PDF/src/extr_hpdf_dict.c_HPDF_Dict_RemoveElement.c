
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ count; } ;
struct TYPE_9__ {int mmgr; TYPE_3__* list; } ;
struct TYPE_8__ {int value; int key; } ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_DictElement ;
typedef TYPE_2__* HPDF_Dict ;


 int HPDF_DICT_ITEM_NOT_FOUND ;
 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_List_ItemAt (TYPE_3__*,scalar_t__) ;
 int HPDF_List_Remove (TYPE_3__*,TYPE_1__*) ;
 int HPDF_OK ;
 int HPDF_Obj_Free (int ,int ) ;
 scalar_t__ HPDF_StrCmp (char const*,int ) ;

HPDF_STATUS
HPDF_Dict_RemoveElement (HPDF_Dict dict,
                          const char *key)
{
    HPDF_UINT i;

    for (i = 0; i < dict->list->count; i++) {
        HPDF_DictElement element =
                (HPDF_DictElement)HPDF_List_ItemAt (dict->list, i);

        if (HPDF_StrCmp (key, element->key) == 0) {
            HPDF_List_Remove (dict->list, element);

            HPDF_Obj_Free (dict->mmgr, element->value);
            HPDF_FreeMem (dict->mmgr, element);

            return HPDF_OK;
        }
    }

    return HPDF_DICT_ITEM_NOT_FOUND;
}
