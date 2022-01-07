
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int error; int mmgr; int attr; } ;
struct TYPE_5__ {scalar_t__ format; scalar_t__ length; scalar_t__ language; int glyph_id_array_count; int * glyph_id_array; } ;
struct TYPE_6__ {TYPE_1__ cmap; int stream; } ;
typedef int HPDF_UINT32 ;
typedef int HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_3__* HPDF_FontDef ;
typedef int HPDF_BYTE ;


 scalar_t__ GetUINT16 (int ,scalar_t__*) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 int * HPDF_GetMem (int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 scalar_t__ HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Read (int ,int *,int*) ;
 scalar_t__ HPDF_Stream_Seek (int ,int ,int ) ;
 int HPDF_TTF_INVALID_FOMAT ;

__attribute__((used)) static HPDF_STATUS
ParseCMAP_format0 (HPDF_FontDef fontdef,
                    HPDF_UINT32 offset)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_BYTE array[256];
    HPDF_UINT size;
    HPDF_UINT16 *parray;
    HPDF_UINT i;

    HPDF_PTRACE((" ParseCMAP_format0\n"));

    ret = HPDF_Stream_Seek (attr->stream, offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret += GetUINT16 (attr->stream, &attr->cmap.format);
    ret += GetUINT16 (attr->stream, &attr->cmap.length);
    ret += GetUINT16 (attr->stream, &attr->cmap.language);

    if (ret != HPDF_OK)
        return HPDF_Error_GetCode (fontdef->error);

    if (attr->cmap.format != 0)
        return HPDF_SetError (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    size = 256;
    ret = HPDF_Stream_Read (attr->stream, array, &size);
    if (ret != HPDF_OK)
        return ret;

    attr->cmap.glyph_id_array_count = 256;
    attr->cmap.glyph_id_array = HPDF_GetMem (fontdef->mmgr,
            sizeof (HPDF_UINT16) * 256);
    if (!attr->cmap.glyph_id_array)
        return HPDF_Error_GetCode (fontdef->error);

    parray = attr->cmap.glyph_id_array;
    for (i = 0; i < 256; i++) {
        *parray = attr->cmap.glyph_id_array[i];
        HPDF_PTRACE((" ParseCMAP_format0 glyph_id_array[%d]=%u\n",
                    i, *parray));
        parray++;
    }

    return HPDF_OK;
}
