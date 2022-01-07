
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int MUI_SUBFONT ;
typedef int LCID ;
typedef int BOOL ;


 int * ChineseSimplifiedFonts ;
 int * ChineseTraditionalFonts ;
 int * CyrillicFonts ;
 int DebugBreak () ;
 int FALSE ;
 int * GreekFonts ;
 int * HebrewFonts ;
 int * JapaneseFonts ;
 int * KoreanFonts ;
 int LANGIDFROMLCID (int ) ;
 int * LatinFonts ;
 int PRIMARYLANGID (int) ;
 int SUBLANGID (int) ;





 int TRUE ;
 int * UnicodeFonts ;
 int UpdateRegistryForFontSubstitutes (int *) ;

BOOL
InputList_SetFontSubstitutes(LCID dwLocaleId)
{
    MUI_SUBFONT *pSubstitutes;
    WORD wLangID, wPrimaryLangID, wSubLangID;

    wLangID = LANGIDFROMLCID(dwLocaleId);
    wPrimaryLangID = PRIMARYLANGID(wLangID);
    wSubLangID = SUBLANGID(wLangID);


    switch (wPrimaryLangID)
    {
        default:
            pSubstitutes = LatinFonts;
            break;
        case 160:
        case 159:
        case 157:
        case 148:
        case 143:
        case 141:
        case 139:
        case 136:
        case 134:
            pSubstitutes = CyrillicFonts;
            break;
        case 153:
            pSubstitutes = GreekFonts;
            break;
        case 151:
            pSubstitutes = HebrewFonts;
            break;
        case 156:
            switch (wSubLangID)
            {
                case 130:
                case 129:
                case 131:
                    pSubstitutes = ChineseSimplifiedFonts;
                    break;
                case 128:
                case 132:
                    pSubstitutes = ChineseTraditionalFonts;
                    break;
                default:
                    pSubstitutes = ((void*)0);
                    DebugBreak();
                    break;
            }
            break;
        case 149:
            pSubstitutes = JapaneseFonts;
            break;
        case 146:
            pSubstitutes = KoreanFonts;
            break;
        case 162:
        case 161:
        case 158:
        case 155:
        case 154:
        case 152:
        case 150:
        case 147:
        case 145:
        case 144:
        case 142:
        case 140:
        case 138:
        case 137:
        case 135:
        case 133:
            pSubstitutes = UnicodeFonts;
            break;
    }

    if (pSubstitutes)
    {
        UpdateRegistryForFontSubstitutes(pSubstitutes);
        return TRUE;
    }
    return FALSE;
}
