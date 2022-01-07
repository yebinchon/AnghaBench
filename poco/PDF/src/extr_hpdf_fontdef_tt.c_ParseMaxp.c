
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int error; int attr; } ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_7__ {int num_glyphs; int stream; } ;
typedef TYPE_1__* HPDF_TTFontDefAttr ;
typedef TYPE_2__ HPDF_TTFTable ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_3__* HPDF_FontDef ;


 TYPE_2__* FindTable (TYPE_3__*,char*) ;
 scalar_t__ GetUINT16 (int ,int *) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 scalar_t__ HPDF_SetError (int ,int ,int) ;
 scalar_t__ HPDF_Stream_Seek (int ,scalar_t__,int ) ;
 int HPDF_TTF_MISSING_TABLE ;

__attribute__((used)) static HPDF_STATUS
ParseMaxp (HPDF_FontDef fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FindTable (fontdef, "maxp");
    HPDF_STATUS ret;

    HPDF_PTRACE ((" HPDF_TTFontDef_ParseMaxp\n"));

    if (!tbl)
        return HPDF_SetError (fontdef->error, HPDF_TTF_MISSING_TABLE, 9);

    ret = HPDF_Stream_Seek (attr->stream, tbl->offset + 4, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret = GetUINT16 (attr->stream, &attr->num_glyphs);

    HPDF_PTRACE((" HPDF_TTFontDef_ParseMaxp num_glyphs=%u\n",
            attr->num_glyphs));

    return ret;
}
