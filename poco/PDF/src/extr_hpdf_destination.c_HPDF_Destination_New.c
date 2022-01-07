
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int obj_class; } ;
struct TYPE_13__ {TYPE_1__ header; } ;
struct TYPE_12__ {int error; } ;
typedef int HPDF_Xref ;
typedef int HPDF_Page ;
typedef TYPE_2__* HPDF_MMgr ;
typedef size_t HPDF_INT ;
typedef TYPE_3__* HPDF_Destination ;


 scalar_t__ HPDF_Array_Add (TYPE_3__*,int ) ;
 scalar_t__ HPDF_Array_AddName (TYPE_3__*,int ) ;
 TYPE_3__* HPDF_Array_New (TYPE_2__*) ;
 int * HPDF_DESTINATION_TYPE_NAMES ;
 scalar_t__ HPDF_FIT ;
 int HPDF_INVALID_PAGE ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_DESTINATION ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Page_Validate (int ) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_3__*) ;

HPDF_Destination
HPDF_Destination_New (HPDF_MMgr mmgr,
                       HPDF_Page target,
                       HPDF_Xref xref)
{
    HPDF_Destination dst;

    HPDF_PTRACE((" HPDF_Destination_New\n"));

    if (!HPDF_Page_Validate (target)) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_PAGE, 0);
        return ((void*)0);
    }

    dst = HPDF_Array_New (mmgr);
    if (!dst)
        return ((void*)0);

    dst->header.obj_class |= HPDF_OSUBCLASS_DESTINATION;

    if (HPDF_Xref_Add (xref, dst) != HPDF_OK)
        return ((void*)0);


    if (HPDF_Array_Add (dst, target) != HPDF_OK)
        return ((void*)0);


    if (HPDF_Array_AddName (dst,
            HPDF_DESTINATION_TYPE_NAMES[(HPDF_INT)HPDF_FIT]) != HPDF_OK)
        return ((void*)0);

    return dst;
}
