
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int error; } ;
struct TYPE_10__ {TYPE_1__* value; int key; } ;
struct TYPE_9__ {int obj_class; } ;
struct TYPE_8__ {void* obj; } ;
typedef int HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Proxy ;
typedef TYPE_2__ HPDF_Obj_Header ;
typedef TYPE_3__* HPDF_DictElement ;
typedef TYPE_4__* HPDF_Dict ;


 TYPE_3__* GetElement (TYPE_4__*,char const*) ;
 int HPDF_DICT_ITEM_UNEXPECTED_TYPE ;
 int HPDF_OCLASS_ANY ;
 int HPDF_OCLASS_PROXY ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_StrCmp (char const*,int ) ;

void*
HPDF_Dict_GetItem (HPDF_Dict dict,
                    const char *key,
                    HPDF_UINT16 obj_class)
{
    HPDF_DictElement element = GetElement (dict, key);
    void *obj;

    if (element && HPDF_StrCmp(key, element->key) == 0) {
        HPDF_Obj_Header *header = (HPDF_Obj_Header *)element->value;

        if (header->obj_class == HPDF_OCLASS_PROXY) {
            HPDF_Proxy p = element->value;
            header = (HPDF_Obj_Header *)p->obj;
            obj = p->obj;
        } else
            obj = element->value;

        if ((header->obj_class & HPDF_OCLASS_ANY) != obj_class) {
            HPDF_PTRACE((" HPDF_Dict_GetItem dict=%p key=%s obj_class=0x%08X\n",
                    dict, key, (HPDF_UINT)header->obj_class));
            HPDF_SetError (dict->error, HPDF_DICT_ITEM_UNEXPECTED_TYPE, 0);

            return ((void*)0);
        }

        return obj;
    }

    return ((void*)0);
}
