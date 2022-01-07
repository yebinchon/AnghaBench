
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmgr; int attr; } ;
struct TYPE_5__ {scalar_t__ gstate; } ;
typedef TYPE_1__* HPDF_PageAttr ;
typedef TYPE_2__* HPDF_Dict ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_GState_Free (int ,scalar_t__) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static void
Page_OnFree (HPDF_Dict obj)
{
    HPDF_PageAttr attr = (HPDF_PageAttr)obj->attr;

    HPDF_PTRACE((" HPDF_Page_OnFree\n"));

    if (attr) {
        if (attr->gstate)
            HPDF_GState_Free (obj->mmgr, attr->gstate);

        HPDF_FreeMem (obj->mmgr, attr);
    }
}
