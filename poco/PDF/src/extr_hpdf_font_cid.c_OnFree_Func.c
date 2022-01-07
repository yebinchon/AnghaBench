
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmgr; int attr; } ;
typedef scalar_t__ HPDF_FontAttr ;
typedef TYPE_1__* HPDF_Dict ;


 int HPDF_FreeMem (int ,scalar_t__) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static void
OnFree_Func (HPDF_Dict obj)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)obj->attr;

    HPDF_PTRACE ((" HPDF_Type0Font_OnFree\n"));

    if (attr)
        HPDF_FreeMem (obj->mmgr, attr);
}
