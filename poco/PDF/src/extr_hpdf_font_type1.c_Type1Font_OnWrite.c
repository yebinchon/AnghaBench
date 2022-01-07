
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int (* write_fn ) (TYPE_6__*,int ) ;int attr; } ;
struct TYPE_12__ {size_t first_char; size_t last_char; scalar_t__ has_differences; } ;
struct TYPE_11__ {int attr; } ;
struct TYPE_10__ {size_t* widths; TYPE_6__* encoder; TYPE_1__* fontdef; } ;
struct TYPE_9__ {int is_base14font; } ;
struct TYPE_8__ {int attr; } ;
typedef size_t HPDF_UINT ;
typedef TYPE_2__* HPDF_Type1FontDefAttr ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_3__* HPDF_FontAttr ;
typedef TYPE_4__* HPDF_Dict ;
typedef TYPE_5__* HPDF_BasicEncoderAttr ;


 char* HPDF_IToA (char*,size_t,char*) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_StrCpy (char*,char*,char*) ;
 int HPDF_Stream_WriteEscapeName (int ,char*) ;
 int HPDF_Stream_WriteStr (int ,char*) ;
 int HPDF_TMP_BUF_SIZ ;
 int stub1 (TYPE_6__*,int ) ;

__attribute__((used)) static HPDF_STATUS
Type1Font_OnWrite (HPDF_Dict obj,
          HPDF_Stream stream)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)obj->attr;
    HPDF_Type1FontDefAttr fontdef_attr =
                    (HPDF_Type1FontDefAttr)attr->fontdef->attr;
    HPDF_BasicEncoderAttr encoder_attr =
                    (HPDF_BasicEncoderAttr)attr->encoder->attr;
    HPDF_UINT i;
    HPDF_STATUS ret;
    char buf[HPDF_TMP_BUF_SIZ];
    char *eptr = buf + HPDF_TMP_BUF_SIZ - 1;

    HPDF_PTRACE ((" HPDF_Font_Type1Font_OnWrite\n"));


    if (!fontdef_attr->is_base14font || encoder_attr->has_differences) {
        char *pbuf;

        pbuf = (char *)HPDF_StrCpy (buf, "/FirstChar ", eptr);
        pbuf = HPDF_IToA (pbuf, encoder_attr->first_char, eptr);
        HPDF_StrCpy (pbuf, "\012", eptr);
        if ((ret = HPDF_Stream_WriteStr (stream, buf)) != HPDF_OK)
            return ret;

        pbuf = (char *)HPDF_StrCpy (buf, "/LastChar ", eptr);
        pbuf = HPDF_IToA (pbuf, encoder_attr->last_char, eptr);
        HPDF_StrCpy (pbuf, "\012", eptr);
        if ((ret = HPDF_Stream_WriteStr (stream, buf)) != HPDF_OK)
            return ret;


        if ((ret = HPDF_Stream_WriteEscapeName (stream, "Widths")) != HPDF_OK)
            return ret;

        if ((ret = HPDF_Stream_WriteStr (stream, " [\012")) != HPDF_OK)
            return ret;

        pbuf = buf;
        for (i = encoder_attr->first_char; i <= encoder_attr->last_char; i++) {

            pbuf = HPDF_IToA (pbuf, attr->widths[i], eptr);
            *pbuf++ = ' ';

            if ((i + 1) % 16 == 0) {
                HPDF_StrCpy(pbuf, "\012", eptr);
                if ((ret = HPDF_Stream_WriteStr (stream, buf)) != HPDF_OK)
                    return ret;
                pbuf = buf;
            }
        }

        HPDF_StrCpy (pbuf, "]\012", eptr);

        if ((ret = HPDF_Stream_WriteStr (stream, buf)) != HPDF_OK)
            return ret;
    }

    return attr->encoder->write_fn (attr->encoder, stream);
}
