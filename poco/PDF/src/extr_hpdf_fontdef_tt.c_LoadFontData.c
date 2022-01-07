
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;


struct TYPE_28__ {scalar_t__ missing_width; void* x_height; void* cap_height; int error; int attr; } ;
struct TYPE_27__ {int offset; } ;
struct TYPE_25__ {int units_per_em; } ;
struct TYPE_23__ {int base_offset; } ;
struct TYPE_26__ {int * stream; TYPE_3__ header; TYPE_2__* h_metric; TYPE_1__ glyph_tbl; int embedding; } ;
struct TYPE_24__ {scalar_t__ advance_width; } ;
struct TYPE_22__ {scalar_t__ top; } ;
typedef int HPDF_UINT32 ;
typedef void* HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_4__* HPDF_TTFontDefAttr ;
typedef TYPE_5__ HPDF_TTFTable ;
typedef int * HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_INT16 ;
typedef TYPE_6__* HPDF_FontDef ;
typedef int HPDF_BOOL ;


 int DumpTable (TYPE_6__*) ;
 TYPE_5__* FindTable (TYPE_6__*,char*) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 int HPDF_SetError (int ,int ,int) ;
 int HPDF_Stream_Free (int *) ;
 int HPDF_Stream_Seek (int *,int ,int ) ;
 int HPDF_TTF_MISSING_TABLE ;
 TYPE_17__ HPDF_TTFontDef_GetCharBBox (TYPE_6__*,void*) ;
 int LoadTTFTable (TYPE_6__*) ;
 int ParseCMap (TYPE_6__*) ;
 int ParseHead (TYPE_6__*) ;
 int ParseHhea (TYPE_6__*) ;
 int ParseHmtx (TYPE_6__*) ;
 int ParseLoca (TYPE_6__*) ;
 int ParseMaxp (TYPE_6__*) ;
 int ParseName (TYPE_6__*) ;
 int ParseOS2 (TYPE_6__*) ;

__attribute__((used)) static HPDF_STATUS
LoadFontData (HPDF_FontDef fontdef,
              HPDF_Stream stream,
              HPDF_BOOL embedding,
              HPDF_UINT offset)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_TTFTable *tbl;

    HPDF_PTRACE ((" HPDF_TTFontDef_LoadFontData\n"));

    attr->stream = stream;
    attr->embedding = embedding;

    if ((ret = HPDF_Stream_Seek (stream, offset, HPDF_SEEK_SET)) != HPDF_OK)
        return ret;

    if ((ret = LoadTTFTable (fontdef)) != HPDF_OK)
        return ret;





    if ((ret = ParseHead (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseMaxp (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseHhea (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseCMap (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseHmtx (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseLoca (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseName (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = ParseOS2 (fontdef)) != HPDF_OK)
        return ret;

    tbl = FindTable (fontdef, "glyf");
    if (!tbl)
        return HPDF_SetError (fontdef->error, HPDF_TTF_MISSING_TABLE, 4);

    attr->glyph_tbl.base_offset = tbl->offset;
    fontdef->cap_height =
                (HPDF_UINT16)HPDF_TTFontDef_GetCharBBox (fontdef, (HPDF_UINT16)'H').top;
    fontdef->x_height =
                (HPDF_UINT16)HPDF_TTFontDef_GetCharBBox (fontdef, (HPDF_UINT16)'x').top;
    fontdef->missing_width = (HPDF_INT16)((HPDF_UINT32)attr->h_metric[0].advance_width * 1000 /
                attr->header.units_per_em);

    HPDF_PTRACE ((" fontdef->cap_height=%d\n", fontdef->cap_height));
    HPDF_PTRACE ((" fontdef->x_height=%d\n", fontdef->x_height));
    HPDF_PTRACE ((" fontdef->missing_width=%d\n", fontdef->missing_width));

    if (!embedding) {
        HPDF_Stream_Free (attr->stream);
        attr->stream = ((void*)0);
    }

    return HPDF_OK;
}
