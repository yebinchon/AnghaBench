
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_FontDef ;


 scalar_t__ BatangChe_Init (int ) ;
 scalar_t__ HPDF_CIDFontDef_ChangeStyle (int ,int ,int ) ;
 int HPDF_FALSE ;
 scalar_t__ HPDF_OK ;
 int HPDF_TRUE ;

__attribute__((used)) static HPDF_STATUS
BatangChe_Bold_Init (HPDF_FontDef fontdef)
{
    HPDF_STATUS ret = BatangChe_Init (fontdef);

    if (ret != HPDF_OK)
        return ret;

    return HPDF_CIDFontDef_ChangeStyle (fontdef, HPDF_TRUE, HPDF_FALSE);
}
