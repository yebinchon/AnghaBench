
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sig_bytes; } ;
typedef TYPE_1__* HPDF_FontDef ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 scalar_t__ HPDF_FONTDEF_SIG_BYTES ;
 int HPDF_PTRACE (char*) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_FontDef_Validate (HPDF_FontDef fontdef)
{
    HPDF_PTRACE ((" HPDF_FontDef_Validate\n"));

    if (!fontdef || fontdef->sig_bytes != HPDF_FONTDEF_SIG_BYTES)
        return HPDF_FALSE;
    else
        return HPDF_TRUE;
}
