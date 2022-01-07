
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* list; } ;
struct TYPE_17__ {int mmgr; int attr; } ;
struct TYPE_16__ {TYPE_4__* fonts; } ;
struct TYPE_15__ {scalar_t__ count; } ;
typedef TYPE_2__* HPDF_PageAttr ;
typedef TYPE_3__* HPDF_Page ;
typedef TYPE_4__* HPDF_Font ;
typedef TYPE_4__* HPDF_Dict ;


 scalar_t__ HPDF_Dict_Add (TYPE_4__*,char*,TYPE_4__*) ;
 char* HPDF_Dict_GetKeyByObj (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* HPDF_Dict_New (int ) ;
 int HPDF_IToA (char*,scalar_t__,char*) ;
 int HPDF_LIMIT_MAX_NAME_LEN ;
 int HPDF_OCLASS_DICT ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 TYPE_4__* HPDF_Page_GetInheritableItem (TYPE_3__*,char*,int ) ;
 scalar_t__ HPDF_StrCpy (char*,char*,char*) ;

const char*
HPDF_Page_GetLocalFontName (HPDF_Page page,
                             HPDF_Font font)
{
    HPDF_PageAttr attr = (HPDF_PageAttr )page->attr;
    const char *key;

    HPDF_PTRACE((" HPDF_Page_GetLocalFontName\n"));





    if (!attr->fonts) {
        HPDF_Dict resources;
        HPDF_Dict fonts;

        resources = HPDF_Page_GetInheritableItem (page, "Resources",
                        HPDF_OCLASS_DICT);
        if (!resources)
            return ((void*)0);

        fonts = HPDF_Dict_New (page->mmgr);
        if (!fonts)
            return ((void*)0);

        if (HPDF_Dict_Add (resources, "Font", fonts) != HPDF_OK)
            return ((void*)0);

        attr->fonts = fonts;
    }


    key = HPDF_Dict_GetKeyByObj (attr->fonts, font);
    if (!key) {



        char fontName[HPDF_LIMIT_MAX_NAME_LEN + 1];
        char *ptr;
        char *end_ptr = fontName + HPDF_LIMIT_MAX_NAME_LEN;

        ptr = (char *)HPDF_StrCpy (fontName, "F", end_ptr);
        HPDF_IToA (ptr, attr->fonts->list->count + 1, end_ptr);

        if (HPDF_Dict_Add (attr->fonts, fontName, font) != HPDF_OK)
            return ((void*)0);

        key = HPDF_Dict_GetKeyByObj (attr->fonts, font);
    }

    return key;
}
