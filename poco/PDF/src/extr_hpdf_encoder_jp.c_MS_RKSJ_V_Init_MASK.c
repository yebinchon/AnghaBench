#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int suppliment; int uid_offset; int* xuid; int /*<<< orphan*/  writing_mode; scalar_t__ ordering; scalar_t__ registry; int /*<<< orphan*/  is_trial_byte_fn; int /*<<< orphan*/  is_lead_byte_fn; } ;
struct TYPE_12__ {int /*<<< orphan*/  type; TYPE_1__* error; scalar_t__ attr; } ;
struct TYPE_11__ {scalar_t__ error_no; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Encoder ;
typedef  TYPE_3__* HPDF_CMapEncoderAttr ;

/* Variables and functions */
 int /*<<< orphan*/  CMAP_ARRAY_90ms_RKSJ_H ; 
 int /*<<< orphan*/  CMAP_ARRAY_90ms_RKSJ_V ; 
 int /*<<< orphan*/  CP932_UNICODE_ARRAY ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_ENCODER_TYPE_DOUBLE_BYTE ; 
 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  HPDF_WMODE_VERTICAL ; 
 int /*<<< orphan*/  JWW_LINE_HEAD_SJIS ; 
 int /*<<< orphan*/  MS_RKSJ_NOTDEF_RANGE ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  RKSJ_IsLeadByte ; 
 int /*<<< orphan*/  RKSJ_IsTrialByte ; 

__attribute__((used)) static HPDF_STATUS
FUNC7  (HPDF_Encoder  encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_STATUS ret;

    if ((ret = FUNC3 (encoder)) != HPDF_OK)
        return ret;

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if ((ret = FUNC0 (encoder, CMAP_ARRAY_90ms_RKSJ_H)) !=
            HPDF_OK)
        return ret;

    if ((ret = FUNC0 (encoder, CMAP_ARRAY_90ms_RKSJ_V)) !=
            HPDF_OK)
        return ret;

    if ((ret = FUNC6 (encoder)) != HPDF_OK)
        return ret;

    if (FUNC2 (encoder, MS_RKSJ_NOTDEF_RANGE)
                != HPDF_OK)
        return encoder->error->error_no;

    FUNC4 (encoder, CP932_UNICODE_ARRAY);

    attr->is_lead_byte_fn = RKSJ_IsLeadByte;
    attr->is_trial_byte_fn = RKSJ_IsTrialByte;
    FUNC5 (attr->registry, "Adobe", attr->registry +
                HPDF_LIMIT_MAX_NAME_LEN);
    FUNC5 (attr->ordering, "Japan1", attr->ordering +
                HPDF_LIMIT_MAX_NAME_LEN);
    attr->suppliment = 2;
    attr->uid_offset = 1020;
    attr->xuid[0] = 1;
    attr->xuid[1] = 10;
    attr->xuid[2] = 25344;

    attr->writing_mode = HPDF_WMODE_VERTICAL;

    encoder->type = HPDF_ENCODER_TYPE_DOUBLE_BYTE;

    FUNC1 (encoder, JWW_LINE_HEAD_SJIS);

    return HPDF_OK;
}