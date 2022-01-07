
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_3__* list; } ;
struct TYPE_6__ {int key; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_DictElement ;
typedef TYPE_2__* HPDF_Dict ;


 int HPDF_List_ItemAt (TYPE_3__*,scalar_t__) ;
 scalar_t__ HPDF_StrCmp (char const*,int ) ;

HPDF_DictElement
GetElement (HPDF_Dict dict,
             const char *key)
{
    HPDF_UINT i;

    for (i = 0; i < dict->list->count; i++) {
        HPDF_DictElement element =
                (HPDF_DictElement)HPDF_List_ItemAt (dict->list, i);

        if (HPDF_StrCmp (key, element->key) == 0)
            return element;
    }

    return ((void*)0);
}
