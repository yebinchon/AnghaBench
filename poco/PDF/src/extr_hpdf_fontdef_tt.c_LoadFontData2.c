
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int error; int attr; } ;
struct TYPE_5__ {int embedding; int stream; } ;
typedef scalar_t__ HPDF_UINT32 ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_TTFontDefAttr ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_FontDef ;
typedef int HPDF_BYTE ;
typedef int HPDF_BOOL ;


 scalar_t__ GetUINT32 (int ,scalar_t__*) ;
 int HPDF_INVALID_TTC_FILE ;
 int HPDF_INVALID_TTC_INDEX ;
 scalar_t__ HPDF_MemCmp (int *,int *,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 scalar_t__ HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Read (int ,int *,scalar_t__*) ;
 scalar_t__ HPDF_Stream_Seek (int ,int,int ) ;
 scalar_t__ LoadFontData (TYPE_2__*,int ,int ,scalar_t__) ;

__attribute__((used)) static HPDF_STATUS
LoadFontData2 (HPDF_FontDef fontdef,
               HPDF_Stream stream,
               HPDF_UINT index,
               HPDF_BOOL embedding)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_BYTE tag[4];
    HPDF_UINT32 num_fonts;
    HPDF_UINT32 offset;
    HPDF_UINT size;

    HPDF_PTRACE ((" HPDF_TTFontDef_LoadFontData2\n"));

    attr->stream = stream;
    attr->embedding = embedding;

    ret = HPDF_Stream_Seek (stream, 0, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    size = 4;
    if ((ret = HPDF_Stream_Read (stream, tag, &size)) != HPDF_OK)
        return ret;

    if (HPDF_MemCmp (tag, (HPDF_BYTE *)"ttcf", 4) != 0)
        return HPDF_SetError (fontdef->error, HPDF_INVALID_TTC_FILE, 0);

    if ((ret = HPDF_Stream_Seek (stream, 8, HPDF_SEEK_SET)) != HPDF_OK)
        return ret;

    if ((ret = GetUINT32 (stream, &num_fonts)) != HPDF_OK)
        return ret;

    HPDF_PTRACE((" HPDF_TTFontDef_LoadFontData2 num_fonts=%u\n",
                (HPDF_UINT)num_fonts));

    if (index >= num_fonts)
        return HPDF_SetError (fontdef->error, HPDF_INVALID_TTC_INDEX, 0);




    if ((ret = HPDF_Stream_Seek (stream, 12 + index * 4, HPDF_SEEK_SET)) !=
                HPDF_OK)
        return ret;

    if ((ret = GetUINT32 (stream, &offset)) != HPDF_OK)
        return ret;

    return LoadFontData (fontdef, stream, embedding, offset);
}
