
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int error; int mmgr; int attr; } ;
struct TYPE_11__ {int offset; } ;
struct TYPE_10__ {int lsb; int advance_width; } ;
struct TYPE_9__ {int num_glyphs; int num_h_metric; int stream; TYPE_2__* h_metric; } ;
typedef int HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_TTFontDefAttr ;
typedef TYPE_2__ HPDF_TTF_LongHorMetric ;
typedef TYPE_3__ HPDF_TTFTable ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_4__* HPDF_FontDef ;


 TYPE_3__* FindTable (TYPE_4__*,char*) ;
 scalar_t__ GetINT16 (int ,int *) ;
 scalar_t__ GetUINT16 (int ,int *) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 TYPE_2__* HPDF_GetMem (int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_SET ;
 scalar_t__ HPDF_SetError (int ,int ,int) ;
 scalar_t__ HPDF_Stream_Seek (int ,int ,int ) ;
 int HPDF_TTF_MISSING_TABLE ;

__attribute__((used)) static HPDF_STATUS
ParseHmtx (HPDF_FontDef fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FindTable (fontdef, "hmtx");
    HPDF_STATUS ret;
    HPDF_UINT i;
    HPDF_UINT16 save_aw = 0;
    HPDF_TTF_LongHorMetric *pmetric;

    HPDF_PTRACE ((" HPDF_TTFontDef_ParseHtmx\n"));

    if (!tbl)
        return HPDF_SetError (fontdef->error, HPDF_TTF_MISSING_TABLE, 7);

    ret = HPDF_Stream_Seek (attr->stream, tbl->offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;




    attr->h_metric = HPDF_GetMem (fontdef->mmgr,
        sizeof (HPDF_TTF_LongHorMetric) * attr->num_glyphs);

    if (!attr->h_metric)
        return HPDF_Error_GetCode (fontdef->error);

    pmetric = attr->h_metric;
    for (i = 0; i < attr->num_h_metric; i++) {
        if ((ret = GetUINT16 (attr->stream, &pmetric->advance_width)) !=
                    HPDF_OK)
            return ret;

        if ((ret = GetINT16 (attr->stream, &pmetric->lsb)) != HPDF_OK)
            return ret;

        HPDF_PTRACE((" ParseHmtx metric[%u] aw=%u lsb=%d\n", i,
            pmetric->advance_width, pmetric->lsb));

        save_aw = pmetric->advance_width;
        pmetric++;
    }


    while (i < attr->num_glyphs) {
        pmetric->advance_width = save_aw;

        if ((ret = GetINT16 (attr->stream, &pmetric->lsb)) != HPDF_OK)
            return ret;

        pmetric++;
        i++;
    }

    return HPDF_OK;
}
