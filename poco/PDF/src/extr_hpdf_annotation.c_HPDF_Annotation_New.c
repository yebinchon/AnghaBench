
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int obj_class; } ;
struct TYPE_12__ {TYPE_1__ header; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__ HPDF_Rect ;
typedef scalar_t__ HPDF_REAL ;
typedef int HPDF_MMgr ;
typedef size_t HPDF_INT ;
typedef int HPDF_Array ;
typedef TYPE_3__* HPDF_Annotation ;
typedef scalar_t__ HPDF_AnnotType ;


 char** HPDF_ANNOT_TYPE_NAMES ;
 scalar_t__ HPDF_Array_AddReal (int ,scalar_t__) ;
 int HPDF_Array_New (int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_3__*,char*,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 TYPE_3__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_ANNOTATION ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_3__*) ;

HPDF_Annotation
HPDF_Annotation_New (HPDF_MMgr mmgr,
                      HPDF_Xref xref,
                      HPDF_AnnotType type,
                      HPDF_Rect rect)
{
    HPDF_Annotation annot;
    HPDF_Array array;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_REAL tmp;

    HPDF_PTRACE((" HPDF_Annotation_New\n"));

    annot = HPDF_Dict_New (mmgr);
    if (!annot)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, annot) != HPDF_OK)
        return ((void*)0);

    array = HPDF_Array_New (mmgr);
    if (!array)
        return ((void*)0);

    if (HPDF_Dict_Add (annot, "Rect", array) != HPDF_OK)
        return ((void*)0);

    if (rect.top < rect.bottom) {
        tmp = rect.top;
        rect.top = rect.bottom;
        rect.bottom = tmp;
    }

    ret += HPDF_Array_AddReal (array, rect.left);
    ret += HPDF_Array_AddReal (array, rect.bottom);
    ret += HPDF_Array_AddReal (array, rect.right);
    ret += HPDF_Array_AddReal (array, rect.top);

    ret += HPDF_Dict_AddName (annot, "Type", "Annot");
    ret += HPDF_Dict_AddName (annot, "Subtype",
                    HPDF_ANNOT_TYPE_NAMES[(HPDF_INT)type]);

    if (ret != HPDF_OK)
        return ((void*)0);

    annot->header.obj_class |= HPDF_OSUBCLASS_ANNOTATION;

    return annot;
}
