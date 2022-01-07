
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int error; int attr; } ;
struct TYPE_10__ {scalar_t__ offset; } ;
struct TYPE_9__ {int stream; } ;
typedef scalar_t__ HPDF_UINT32 ;
typedef scalar_t__ HPDF_UINT16 ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_TTFontDefAttr ;
typedef TYPE_2__ HPDF_TTFTable ;
typedef scalar_t__ HPDF_STATUS ;
typedef scalar_t__ HPDF_INT32 ;
typedef TYPE_3__* HPDF_FontDef ;


 TYPE_2__* FindTable (TYPE_3__*,char*) ;
 scalar_t__ GetUINT16 (int ,scalar_t__*) ;
 scalar_t__ GetUINT32 (int ,scalar_t__*) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 scalar_t__ HPDF_SetError (int ,int ,int) ;
 scalar_t__ HPDF_Stream_Seek (int ,scalar_t__,int ) ;
 scalar_t__ HPDF_Stream_Tell (int ) ;
 int HPDF_TTF_INVALID_FOMAT ;
 int HPDF_TTF_MISSING_TABLE ;
 scalar_t__ ParseCMAP_format0 (TYPE_3__*,scalar_t__) ;
 scalar_t__ ParseCMAP_format4 (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static HPDF_STATUS
ParseCMap (HPDF_FontDef fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FindTable (fontdef, "cmap");
    HPDF_STATUS ret;
    HPDF_UINT16 version;
    HPDF_UINT16 num_cmap;
    HPDF_UINT i;
    HPDF_UINT32 ms_unicode_encoding_offset = 0;
    HPDF_UINT32 byte_encoding_offset = 0;

    HPDF_PTRACE ((" HPDF_TTFontDef_ParseCMap\n"));

    if (!tbl)
        return HPDF_SetError (fontdef->error, HPDF_TTF_MISSING_TABLE, 1);

    ret = HPDF_Stream_Seek (attr->stream, tbl->offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret += GetUINT16 (attr->stream, &version);
    if (ret != HPDF_OK)
        return HPDF_Error_GetCode (fontdef->error);

    if (version != 0)
        return HPDF_SetError (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    ret += GetUINT16 (attr->stream, &num_cmap);
    if (ret != HPDF_OK)
        return HPDF_Error_GetCode (fontdef->error);

    for (i = 0; i < num_cmap; i++) {
        HPDF_UINT16 platformID;
        HPDF_UINT16 encodingID;
        HPDF_UINT16 format;
        HPDF_UINT32 offset;
        HPDF_INT32 save_offset;

        ret += GetUINT16 (attr->stream, &platformID);
        ret += GetUINT16 (attr->stream, &encodingID);
        ret += GetUINT32 (attr->stream, &offset);
        if (ret != HPDF_OK)
            return HPDF_Error_GetCode (fontdef->error);

        save_offset = HPDF_Stream_Tell (attr->stream);
        if (save_offset < 0)
           return HPDF_Error_GetCode (fontdef->error);

        ret = HPDF_Stream_Seek (attr->stream, tbl->offset + offset,
                HPDF_SEEK_SET);
        if (ret != HPDF_OK)
           return ret;

        ret = GetUINT16 (attr->stream, &format);
        if (ret != HPDF_OK)
           return ret;

        HPDF_PTRACE((" HPDF_TTFontDef_ParseCMap tables[%d] platformID=%u "
                        "encodingID=%u format=%u offset=%u\n", i, platformID,
                        encodingID, format, (HPDF_UINT)offset));


        if (platformID == 3 && encodingID == 1 && format == 4) {
            ms_unicode_encoding_offset = offset;
            break;
        }


        if (platformID == 1 && encodingID ==0 && format == 1)
            byte_encoding_offset = offset;

        ret = HPDF_Stream_Seek (attr->stream, save_offset, HPDF_SEEK_SET);
        if (ret != HPDF_OK)
           return ret;
    }

    if (ms_unicode_encoding_offset != 0) {
        HPDF_PTRACE((" found microsoft unicode cmap.\n"));
        ret = ParseCMAP_format4(fontdef, ms_unicode_encoding_offset +
                tbl->offset);
    } else if (byte_encoding_offset != 0) {
        HPDF_PTRACE((" found byte encoding cmap.\n"));
        ret = ParseCMAP_format0(fontdef, byte_encoding_offset + tbl->offset);
    } else {
        HPDF_PTRACE((" cannot found target cmap.\n"));
        return HPDF_SetError (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);
    }

    return ret;
}
