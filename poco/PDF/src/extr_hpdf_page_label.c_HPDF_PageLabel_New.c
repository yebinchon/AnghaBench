
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int def_encoder; int mmgr; int error; } ;
typedef int HPDF_STATUS ;
typedef int HPDF_PageNumStyle ;
typedef int HPDF_INT ;
typedef TYPE_1__* HPDF_Doc ;
typedef int * HPDF_Dict ;


 scalar_t__ HPDF_Dict_Add (int *,char*,int ) ;
 scalar_t__ HPDF_Dict_AddName (int *,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (int *,char*,int ) ;
 int HPDF_Dict_Free (int *) ;
 int * HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;



 int HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE ;


 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int *,int ,int ) ;
 int HPDF_String_New (int ,char const*,int ) ;

HPDF_Dict
HPDF_PageLabel_New (HPDF_Doc pdf,
                     HPDF_PageNumStyle style,
                     HPDF_INT first_page,
                     const char *prefix)
{
    HPDF_Dict obj = HPDF_Dict_New (pdf->mmgr);

    HPDF_PTRACE ((" HPDF_PageLabel_New\n"));

    if (!obj)
        return ((void*)0);

    switch (style) {
        case 132:
            if (HPDF_Dict_AddName (obj, "S", "D") != HPDF_OK)
                goto Fail;
            break;
        case 128:
            if (HPDF_Dict_AddName (obj, "S", "R") != HPDF_OK)
                goto Fail;
            break;
        case 130:
            if (HPDF_Dict_AddName (obj, "S", "r") != HPDF_OK)
                goto Fail;
            break;
        case 129:
            if (HPDF_Dict_AddName (obj, "S", "A") != HPDF_OK)
                goto Fail;
            break;
        case 131:
            if (HPDF_Dict_AddName (obj, "S", "a") != HPDF_OK)
                goto Fail;
            break;
        default:
            HPDF_SetError (&pdf->error, HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE,
                    (HPDF_STATUS)style);
            goto Fail;
    }

    if (prefix && prefix[0] != 0)
        if (HPDF_Dict_Add (obj, "P", HPDF_String_New (pdf->mmgr, prefix,
                    pdf->def_encoder)) != HPDF_OK)
            goto Fail;

    if (first_page != 0)
        if (HPDF_Dict_AddNumber (obj, "St", first_page) != HPDF_OK)
            goto Fail;

    return obj;

Fail:
    HPDF_Dict_Free (obj);
    return ((void*)0);
}
