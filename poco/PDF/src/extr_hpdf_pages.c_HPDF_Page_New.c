
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_17__ {int obj_class; } ;
struct TYPE_19__ {int mmgr; TYPE_2__* attr; int before_write_fn; int free_fn; TYPE_1__ header; } ;
struct TYPE_18__ {TYPE_12__* contents; int xref; int stream; int gstate; void* text_pos; void* cur_pos; int gmode; } ;
struct TYPE_16__ {int stream; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_PageAttr_Rec ;
typedef TYPE_2__* HPDF_PageAttr ;
typedef TYPE_3__* HPDF_Page ;
typedef int HPDF_MMgr ;
typedef int HPDF_INT16 ;


 scalar_t__ AddResource (TYPE_3__*) ;
 TYPE_12__* HPDF_Box_Array_New (int ,int ) ;
 scalar_t__ HPDF_DEF_PAGE_HEIGHT ;
 scalar_t__ HPDF_DEF_PAGE_WIDTH ;
 TYPE_12__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_3__*,char*,TYPE_12__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 int HPDF_Dict_Free (TYPE_3__*) ;
 TYPE_3__* HPDF_Dict_New (int ) ;
 int HPDF_GMODE_PAGE_DESCRIPTION ;
 int HPDF_GState_New (int ,int *) ;
 TYPE_2__* HPDF_GetMem (int ,int) ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_PAGE ;
 int HPDF_PTRACE (char*) ;
 int HPDF_ToBox (int ,int ,int ,int ) ;
 void* HPDF_ToPoint (int ,int ) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_3__*) ;
 int Page_BeforeWrite ;
 int Page_OnFree ;

HPDF_Page
HPDF_Page_New (HPDF_MMgr mmgr,
                HPDF_Xref xref)
{
    HPDF_STATUS ret;
    HPDF_PageAttr attr;
    HPDF_Page page;

    HPDF_PTRACE((" HPDF_Page_New\n"));

    page = HPDF_Dict_New (mmgr);
    if (!page)
        return ((void*)0);

    page->header.obj_class |= HPDF_OSUBCLASS_PAGE;
    page->free_fn = Page_OnFree;
    page->before_write_fn = Page_BeforeWrite;

    attr = HPDF_GetMem (page->mmgr, sizeof(HPDF_PageAttr_Rec));
    if (!attr) {
        HPDF_Dict_Free (page);
        return ((void*)0);
    }

    page->attr = attr;
    HPDF_MemSet (attr, 0, sizeof(HPDF_PageAttr_Rec));
    attr->gmode = HPDF_GMODE_PAGE_DESCRIPTION;
    attr->cur_pos = HPDF_ToPoint (0, 0);
    attr->text_pos = HPDF_ToPoint (0, 0);

    ret = HPDF_Xref_Add (xref, page);
    if (ret != HPDF_OK)
        return ((void*)0);

    attr->gstate = HPDF_GState_New (page->mmgr, ((void*)0));
    attr->contents = HPDF_DictStream_New (page->mmgr, xref);

    if (!attr->gstate || !attr->contents)
        return ((void*)0);

    attr->stream = attr->contents->stream;
    attr->xref = xref;


    ret += HPDF_Dict_AddName (page, "Type", "Page");
    ret += HPDF_Dict_Add (page, "MediaBox", HPDF_Box_Array_New (page->mmgr,
                HPDF_ToBox (0, 0, (HPDF_INT16)(HPDF_DEF_PAGE_WIDTH), (HPDF_INT16)(HPDF_DEF_PAGE_HEIGHT))));
    ret += HPDF_Dict_Add (page, "Contents", attr->contents);

    ret += AddResource (page);

    if (ret != HPDF_OK)
        return ((void*)0);

    return page;
}
