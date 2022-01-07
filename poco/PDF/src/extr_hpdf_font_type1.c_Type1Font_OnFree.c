
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmgr; int attr; } ;
struct TYPE_5__ {struct TYPE_5__* widths; } ;
typedef TYPE_1__* HPDF_FontAttr ;
typedef TYPE_2__* HPDF_Dict ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static void
Type1Font_OnFree (HPDF_Dict obj)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)obj->attr;

    HPDF_PTRACE ((" HPDF_Type1Font_OnFree\n"));

    if (attr) {
        if (attr->widths) {
            HPDF_FreeMem (obj->mmgr, attr->widths);
        }
        HPDF_FreeMem (obj->mmgr, attr);
    }
}
