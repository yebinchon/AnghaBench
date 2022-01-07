
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int error; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_Outline ;


 scalar_t__ HPDF_Dict_Add (TYPE_1__*,char*,TYPE_1__*) ;
 int HPDF_Dict_GetItem (TYPE_1__*,char*,int ) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_OCLASS_DICT ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_STATUS
AddChild (HPDF_Outline parent,
           HPDF_Outline item)
{
    HPDF_Outline first = (HPDF_Outline)HPDF_Dict_GetItem (parent, "First",
                    HPDF_OCLASS_DICT);
    HPDF_Outline last = (HPDF_Outline)HPDF_Dict_GetItem (parent, "Last",
                    HPDF_OCLASS_DICT);
    HPDF_STATUS ret = 0;

    HPDF_PTRACE((" AddChild\n"));

    if (!first)
        ret += HPDF_Dict_Add (parent, "First", item);

    if (last) {
        ret += HPDF_Dict_Add (last, "Next", item);
        ret += HPDF_Dict_Add (item, "Prev", last);
    }

    ret += HPDF_Dict_Add (parent, "Last", item);
    ret += HPDF_Dict_Add (item, "Parent", parent);

    if (ret != HPDF_OK)
        return HPDF_Error_GetCode (item->error);

    return HPDF_OK;
}
