
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int (* write_fn ) (TYPE_4__*,int ) ;int attr; } ;
struct TYPE_8__ {size_t first_char; size_t last_char; } ;
struct TYPE_7__ {int attr; } ;
struct TYPE_6__ {TYPE_4__* encoder; int * widths; } ;
typedef size_t HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_FontAttr ;
typedef TYPE_2__* HPDF_Dict ;
typedef TYPE_3__* HPDF_BasicEncoderAttr ;


 char* HPDF_IToA (char*,int ,char*) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_StrCpy (char*,char*,char*) ;
 int HPDF_Stream_WriteEscapeName (int ,char*) ;
 int HPDF_Stream_WriteStr (int ,char*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static HPDF_STATUS
OnWrite (HPDF_Dict obj,
          HPDF_Stream stream)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)obj->attr;
    HPDF_BasicEncoderAttr encoder_attr =
                    (HPDF_BasicEncoderAttr)attr->encoder->attr;
    HPDF_UINT i;
    HPDF_STATUS ret;
    char buf[128];
    char *pbuf = buf;
    char *eptr = buf + 127;

    HPDF_PTRACE ((" HPDF_Font_OnWrite\n"));


    if ((ret = HPDF_Stream_WriteEscapeName (stream, "Widths")) != HPDF_OK)
        return ret;

    if ((ret = HPDF_Stream_WriteStr (stream, " [\012")) != HPDF_OK)
        return ret;

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

    return attr->encoder->write_fn (attr->encoder, stream);
}
