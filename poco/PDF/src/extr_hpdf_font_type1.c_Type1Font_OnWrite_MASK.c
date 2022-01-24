#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  (* write_fn ) (TYPE_6__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  attr; } ;
struct TYPE_12__ {size_t first_char; size_t last_char; scalar_t__ has_differences; } ;
struct TYPE_11__ {int /*<<< orphan*/  attr; } ;
struct TYPE_10__ {size_t* widths; TYPE_6__* encoder; TYPE_1__* fontdef; } ;
struct TYPE_9__ {int /*<<< orphan*/  is_base14font; } ;
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;
typedef  size_t HPDF_UINT ;
typedef  TYPE_2__* HPDF_Type1FontDefAttr ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_3__* HPDF_FontAttr ;
typedef  TYPE_4__* HPDF_Dict ;
typedef  TYPE_5__* HPDF_BasicEncoderAttr ;

/* Variables and functions */
 char* FUNC0 (char*,size_t,char*) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int HPDF_TMP_BUF_SIZ ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HPDF_STATUS
FUNC6  (HPDF_Dict    obj,
          HPDF_Stream  stream)
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

    FUNC1 ((" HPDF_Font_Type1Font_OnWrite\n"));

    /* if font is base14-font these entries is not required */
    if (!fontdef_attr->is_base14font || encoder_attr->has_differences) {
        char *pbuf;

        pbuf = (char *)FUNC2 (buf, "/FirstChar ", eptr);
        pbuf = FUNC0 (pbuf, encoder_attr->first_char, eptr);
        FUNC2 (pbuf, "\012", eptr);
        if ((ret = FUNC4 (stream, buf)) != HPDF_OK)
            return ret;

        pbuf = (char *)FUNC2 (buf, "/LastChar ", eptr);
        pbuf = FUNC0 (pbuf, encoder_attr->last_char, eptr);
        FUNC2 (pbuf, "\012", eptr);
        if ((ret = FUNC4 (stream, buf)) != HPDF_OK)
            return ret;

        /* Widths entry */
        if ((ret = FUNC3 (stream, "Widths")) != HPDF_OK)
            return ret;

        if ((ret = FUNC4 (stream, " [\012")) != HPDF_OK)
            return ret;

        pbuf = buf;
        for (i = encoder_attr->first_char; i <= encoder_attr->last_char; i++) {

            pbuf = FUNC0 (pbuf, attr->widths[i], eptr);
            *pbuf++ = ' ';

            if ((i + 1) % 16 == 0) {
                FUNC2(pbuf, "\012", eptr);
                if ((ret = FUNC4 (stream, buf)) != HPDF_OK)
                    return ret;
                pbuf = buf;
            }
        }

        FUNC2 (pbuf, "]\012", eptr);

        if ((ret = FUNC4 (stream, buf)) != HPDF_OK)
            return ret;
    }

    return attr->encoder->write_fn (attr->encoder, stream);
}