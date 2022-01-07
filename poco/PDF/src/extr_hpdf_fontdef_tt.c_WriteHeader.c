
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int error; int attr; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_11__ {int glyph_data_format; int index_to_loc_format; int font_direction_hint; int lowest_rec_ppem; int mac_style; int y_max; int x_max; int y_min; int x_min; int modified; int created; int units_per_em; int flags; int magic_number; int font_revision; int version_number; } ;
struct TYPE_12__ {TYPE_1__ header; } ;
typedef int HPDF_UINT32 ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef TYPE_3__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_4__* HPDF_FontDef ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Stream_Write (TYPE_3__*,int ,int) ;
 scalar_t__ WriteINT16 (TYPE_3__*,int ) ;
 scalar_t__ WriteUINT16 (TYPE_3__*,int ) ;
 scalar_t__ WriteUINT32 (TYPE_3__*,int ) ;

__attribute__((used)) static HPDF_STATUS
WriteHeader (HPDF_FontDef fontdef,
             HPDF_Stream stream,
             HPDF_UINT32 *check_sum_ptr)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret = HPDF_OK;

    HPDF_PTRACE ((" WriteHeader\n"));

    ret += HPDF_Stream_Write (stream, attr->header.version_number, 4);
    ret += WriteUINT32 (stream, attr->header.font_revision);





    *check_sum_ptr = stream->size;

    ret += WriteUINT32 (stream, 0);
    ret += WriteUINT32 (stream, attr->header.magic_number);
    ret += WriteUINT16 (stream, attr->header.flags);
    ret += WriteUINT16 (stream, attr->header.units_per_em);
    ret += HPDF_Stream_Write (stream, attr->header.created, 8);
    ret += HPDF_Stream_Write (stream, attr->header.modified, 8);
    ret += WriteINT16 (stream, attr->header.x_min);
    ret += WriteINT16 (stream, attr->header.y_min);
    ret += WriteINT16 (stream, attr->header.x_max);
    ret += WriteINT16 (stream, attr->header.y_max);
    ret += WriteUINT16 (stream, attr->header.mac_style);
    ret += WriteUINT16 (stream, attr->header.lowest_rec_ppem);
    ret += WriteINT16 (stream, attr->header.font_direction_hint);
    ret += WriteINT16 (stream, attr->header.index_to_loc_format);
    ret += WriteINT16 (stream, attr->header.glyph_data_format);

    if (ret != HPDF_OK)
        return HPDF_Error_GetCode (fontdef->error);

    return HPDF_OK;
}
