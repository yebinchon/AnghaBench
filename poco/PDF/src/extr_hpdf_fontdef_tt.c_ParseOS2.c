
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; int error; int attr; } ;
struct TYPE_8__ {int offset; } ;
struct TYPE_7__ {scalar_t__ fs_type; int* sfamilyclass; int* panose; scalar_t__ code_page_range2; scalar_t__ code_page_range1; int stream; scalar_t__ embedding; } ;
typedef scalar_t__ HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_TTFontDefAttr ;
typedef TYPE_2__ HPDF_TTFTable ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_3__* HPDF_FontDef ;


 TYPE_2__* FindTable (TYPE_3__*,char*) ;
 scalar_t__ GetUINT16 (int ,scalar_t__*) ;
 scalar_t__ GetUINT32 (int ,scalar_t__*) ;
 int HPDF_FONT_SCRIPT ;
 int HPDF_FONT_SERIF ;
 int HPDF_FONT_SYMBOLIC ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_CUR ;
 int HPDF_SEEK_SET ;
 scalar_t__ HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Read (int ,int*,int*) ;
 scalar_t__ HPDF_Stream_Seek (int ,int,int ) ;
 int HPDF_TTF_CANNOT_EMBEDDING_FONT ;
 int HPDF_TTF_MISSING_TABLE ;

__attribute__((used)) static HPDF_STATUS
ParseOS2 (HPDF_FontDef fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FindTable (fontdef, "OS/2");
    HPDF_STATUS ret;
    HPDF_UINT16 version;
    HPDF_UINT len;

    HPDF_PTRACE ((" ParseOS2\n"));

    if (!tbl)
        return HPDF_SetError (fontdef->error, HPDF_TTF_MISSING_TABLE, 0);


    ret = HPDF_Stream_Seek (attr->stream, tbl->offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    if ((ret = GetUINT16 (attr->stream, &version)) != HPDF_OK)
        return ret;


    ret = HPDF_Stream_Seek (attr->stream, tbl->offset + 8, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    if ((ret = GetUINT16 (attr->stream, &attr->fs_type)) != HPDF_OK)
        return ret;

    if (attr->fs_type & (0x0002 | 0x0100 | 0x0200) && attr->embedding)
        return HPDF_SetError (fontdef->error, HPDF_TTF_CANNOT_EMBEDDING_FONT,
                0);


    if ((ret = HPDF_Stream_Seek (attr->stream, tbl->offset + 30, HPDF_SEEK_SET))
            != HPDF_OK)
        return ret;

    len = 2;
    if ((ret = HPDF_Stream_Read (attr->stream, attr->sfamilyclass, &len)) != HPDF_OK)
        return ret;

    len = 10;
    if ((ret = HPDF_Stream_Read (attr->stream, attr->panose, &len)) != HPDF_OK)
        return ret;

    HPDF_PTRACE((" ParseOS2 sFamilyClass=%d-%d "
            "Panose=%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X\n",
        attr->sfamilyclass[0], attr->sfamilyclass[1],
        attr->panose[0], attr->panose[1], attr->panose[2], attr->panose[3],
        attr->panose[4], attr->panose[5], attr->panose[6], attr->panose[7],
        attr->panose[8], attr->panose[9]));
    if ((attr->sfamilyclass[0] > 0 && attr->sfamilyclass[0] < 6)
        || (attr->sfamilyclass[0] == 7))
        fontdef->flags = fontdef->flags | HPDF_FONT_SERIF;

    if (attr->sfamilyclass[0] == 10)
        fontdef->flags = fontdef->flags | HPDF_FONT_SCRIPT;

    if (attr->sfamilyclass[0] == 12)
        fontdef->flags = fontdef->flags | HPDF_FONT_SYMBOLIC;


    if(version > 0) {
        if ((ret = HPDF_Stream_Seek (attr->stream, 36, HPDF_SEEK_CUR)) != HPDF_OK)
            return ret;

        if ((ret = GetUINT32 (attr->stream, &attr->code_page_range1)) != HPDF_OK)
            return ret;

        if ((ret = GetUINT32 (attr->stream, &attr->code_page_range2)) != HPDF_OK)
            return ret;
    }

    HPDF_PTRACE(("  ParseOS2 CodePageRange1=%08X CodePageRange2=%08X\n",
                (HPDF_UINT)attr->code_page_range1,
                (HPDF_UINT)attr->code_page_range2));

    return HPDF_OK;
}
