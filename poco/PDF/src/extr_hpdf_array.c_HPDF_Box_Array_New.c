
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int right; int bottom; int left; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_1__ HPDF_Box ;
typedef int * HPDF_Array ;


 scalar_t__ HPDF_Array_Add (int *,int ) ;
 int HPDF_Array_Free (int *) ;
 int * HPDF_Array_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Real_New (int ,int ) ;

HPDF_Array
HPDF_Box_Array_New (HPDF_MMgr mmgr,
                     HPDF_Box box)
{
    HPDF_Array obj;
    HPDF_STATUS ret = HPDF_OK;

    HPDF_PTRACE((" HPDF_Box_Array_New\n"));

    obj = HPDF_Array_New (mmgr);
    if (!obj)
        return ((void*)0);

    ret += HPDF_Array_Add (obj, HPDF_Real_New (mmgr, box.left));
    ret += HPDF_Array_Add (obj, HPDF_Real_New (mmgr, box.bottom));
    ret += HPDF_Array_Add (obj, HPDF_Real_New (mmgr, box.right));
    ret += HPDF_Array_Add (obj, HPDF_Real_New (mmgr, box.top));

    if (ret != HPDF_OK) {
        HPDF_Array_Free (obj);
        return ((void*)0);
    }

    return obj;
}
