
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int attr; } ;
struct TYPE_6__ {scalar_t__ gmode; TYPE_1__* gstate; } ;
struct TYPE_5__ {scalar_t__ prev; } ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_PageAttr ;
typedef int HPDF_Page ;
typedef TYPE_3__* HPDF_Dict ;


 scalar_t__ HPDF_GMODE_PATH_OBJECT ;
 scalar_t__ HPDF_GMODE_TEXT_OBJECT ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Page_EndPath (int ) ;
 int HPDF_Page_EndText (int ) ;
 int HPDF_Page_GRestore (int ) ;

__attribute__((used)) static HPDF_STATUS
Page_BeforeWrite (HPDF_Dict obj)
{
    HPDF_STATUS ret;
    HPDF_Page page = (HPDF_Page)obj;
    HPDF_PageAttr attr = (HPDF_PageAttr)obj->attr;

    HPDF_PTRACE((" HPDF_Page_BeforeWrite\n"));

    if (attr->gmode == HPDF_GMODE_PATH_OBJECT) {
        HPDF_PTRACE((" HPDF_Page_BeforeWrite warning path object is not"
                    " end\n"));

        if ((ret = HPDF_Page_EndPath (page)) != HPDF_OK)
           return ret;
    }

    if (attr->gmode == HPDF_GMODE_TEXT_OBJECT) {
        HPDF_PTRACE((" HPDF_Page_BeforeWrite warning text block is not end\n"));

        if ((ret = HPDF_Page_EndText (page)) != HPDF_OK)
            return ret;
    }

    if (attr->gstate)
        while (attr->gstate->prev) {
            if ((ret = HPDF_Page_GRestore (page)) != HPDF_OK)
                return ret;
        }

    return HPDF_OK;
}
