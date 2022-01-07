
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unicode; int gryph_name; } ;
typedef TYPE_1__ HPDF_UnicodeGryphPair ;
typedef int HPDF_UNICODE ;


 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_StrCmp (char const*,int ) ;
 TYPE_1__* HPDF_UNICODE_GRYPH_NAME_MAP ;

HPDF_UNICODE
HPDF_GryphNameToUnicode (const char *gryph_name)
{
    const HPDF_UnicodeGryphPair* map = HPDF_UNICODE_GRYPH_NAME_MAP;

    HPDF_PTRACE ((" HPDF_GryphNameToUnicode\n"));

    while (map->unicode != 0xFFFF) {
        if (HPDF_StrCmp (gryph_name, map->gryph_name) == 0)
            return map->unicode;
        map++;
    }

    return 0x0000;
}
