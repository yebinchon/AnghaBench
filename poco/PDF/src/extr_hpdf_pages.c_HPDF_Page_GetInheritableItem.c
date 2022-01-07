
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int error; } ;
typedef int HPDF_UINT16 ;
typedef TYPE_1__* HPDF_Pages ;
typedef TYPE_1__* HPDF_Page ;
typedef size_t HPDF_INT ;
typedef scalar_t__ HPDF_BOOL ;


 void* HPDF_Dict_GetItem (TYPE_1__*,char const*,int ) ;
 scalar_t__ HPDF_FALSE ;
 scalar_t__* HPDF_INHERITABLE_ENTRIES ;
 int HPDF_INVALID_PARAMETER ;
 int HPDF_OCLASS_DICT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_StrCmp (char const*,scalar_t__) ;
 scalar_t__ HPDF_TRUE ;

void*
HPDF_Page_GetInheritableItem (HPDF_Page page,
                               const char *key,
                               HPDF_UINT16 obj_class)
{
    HPDF_BOOL chk = HPDF_FALSE;
    HPDF_INT i = 0;
    void * obj;

    HPDF_PTRACE((" HPDF_Page_GetInheritableItem\n"));


    while (HPDF_INHERITABLE_ENTRIES[i]) {
        if (HPDF_StrCmp (key, HPDF_INHERITABLE_ENTRIES[i]) == 0) {
            chk = HPDF_TRUE;
            break;
        }
        i++;
    }


    if (chk != HPDF_TRUE) {
        HPDF_SetError (page->error, HPDF_INVALID_PARAMETER, 0);
        return ((void*)0);
    }

    obj = HPDF_Dict_GetItem (page, key, obj_class);




    if (!obj) {
        HPDF_Pages pages = HPDF_Dict_GetItem (page, "Parent", HPDF_OCLASS_DICT);
        while (pages) {
            obj = HPDF_Dict_GetItem (page, key, obj_class);

            if (obj)
                break;

            pages = HPDF_Dict_GetItem (pages, "Parent", HPDF_OCLASS_DICT);
        }
    }

    return obj;
}
