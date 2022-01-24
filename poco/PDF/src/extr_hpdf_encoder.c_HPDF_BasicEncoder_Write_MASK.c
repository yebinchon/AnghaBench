#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ has_differences; size_t first_char; size_t last_char; int* differences; int /*<<< orphan*/ * unicode_map; int /*<<< orphan*/  base_encoding; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  size_t HPDF_INT ;
typedef  TYPE_1__* HPDF_Encoder ;
typedef  TYPE_2__* HPDF_BasicEncoderAttr ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_ENCODING_FONT_SPECIFIC ; 
 char* FUNC0 (char*,size_t,char*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int HPDF_TEXT_DEFAULT_LEN ; 
 scalar_t__ HPDF_TRUE ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC7  (HPDF_Encoder  encoder,
                          HPDF_Stream   out)
{
    HPDF_STATUS ret;
    HPDF_BasicEncoderAttr attr = (HPDF_BasicEncoderAttr)encoder->attr;

    FUNC1 ((" HPDF_BasicEncoder_Write\n"));

    /*  if HPDF_ENCODING_FONT_SPECIFIC is selected, no Encoding object will be "
     *  written.
     */
    if (FUNC2 (attr->base_encoding, HPDF_ENCODING_FONT_SPECIFIC) == 0)
        return HPDF_OK;

    /* if encoder has differences-data, encoding object is written as
       dictionary-object, otherwise it is written as name-object. */
    if (attr->has_differences == HPDF_TRUE) {
        ret = FUNC5 (out,
                "/Encoding <<\012"
                "/Type /Encoding\012"
                "/BaseEncoding ");
        if (ret != HPDF_OK)
            return ret;
    } else {
        ret = FUNC5 (out, "/Encoding ");
        if (ret != HPDF_OK)
            return ret;
    }

    ret = FUNC4 (out, attr->base_encoding);
    if (ret != HPDF_OK)
        return ret;

    ret = FUNC5 (out, "\012");
    if (ret != HPDF_OK)
        return ret;

    /* write differences data */
    if (attr->has_differences == HPDF_TRUE) {
        HPDF_INT i;

        ret = FUNC5 (out, "/Differences [");
        if (ret != HPDF_OK)
            return ret;

        for (i = attr->first_char; i <= attr->last_char; i++) {
            if (attr->differences[i] == 1) {
                char tmp[HPDF_TEXT_DEFAULT_LEN];
                char* ptmp = tmp;
                const char* char_name =
                    FUNC6 (attr->unicode_map[i]);

                ptmp = FUNC0 (ptmp, i, tmp + HPDF_TEXT_DEFAULT_LEN - 1);
                *ptmp++ = ' ';
                *ptmp++ = '/';
                ptmp = (char *)FUNC3 (ptmp, char_name, tmp +
                        HPDF_TEXT_DEFAULT_LEN - 1);
                *ptmp++ = ' ';
                *ptmp = 0;

                ret = FUNC5 (out, tmp);
                if (ret != HPDF_OK)
                    return ret;
            }
        }

        ret = FUNC5 (out, "]\012>>\012");
    }

    return ret;
}