#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int uid_offset; int* xuid; int /*<<< orphan*/  writing_mode; scalar_t__ suppliment; scalar_t__ ordering; scalar_t__ registry; int /*<<< orphan*/  is_trial_byte_fn; int /*<<< orphan*/  is_lead_byte_fn; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_1__* error; scalar_t__ attr; } ;
struct TYPE_10__ {scalar_t__ error_no; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Encoder ;
typedef  TYPE_3__* HPDF_CMapEncoderAttr ;

/* Variables and functions */
 int /*<<< orphan*/  CMAP_ARRAY_KSC_EUC_H ; 
 int /*<<< orphan*/  CMAP_ARRAY_KSC_EUC_V ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_ENCODER_TYPE_DOUBLE_BYTE ; 
 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  HPDF_WMODE_VERTICAL ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  KSC_EUC_IsLeadByte ; 
 int /*<<< orphan*/  KSC_EUC_IsTrialByte ; 
 int /*<<< orphan*/  KSC_EUC_NOTDEF_RANGE ; 
 int /*<<< orphan*/  KSC_EUC_UNICODE_ARRAY ; 

__attribute__((used)) static HPDF_STATUS
FUNC6  (HPDF_Encoder  encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_STATUS ret;

    if ((ret = FUNC2 (encoder)) != HPDF_OK)
        return ret;

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if (FUNC0 (encoder, CMAP_ARRAY_KSC_EUC_H) != HPDF_OK)
        return encoder->error->error_no;

    if (FUNC0 (encoder, CMAP_ARRAY_KSC_EUC_V) != HPDF_OK)
        return encoder->error->error_no;

    if ((ret = FUNC5 (encoder)) != HPDF_OK)
        return ret;

    if (FUNC1 (encoder, KSC_EUC_NOTDEF_RANGE)
                != HPDF_OK)
        return encoder->error->error_no;

    FUNC3 (encoder, KSC_EUC_UNICODE_ARRAY);

    attr->is_lead_byte_fn = KSC_EUC_IsLeadByte;
    attr->is_trial_byte_fn = KSC_EUC_IsTrialByte;
    FUNC4 (attr->registry, "Adobe", attr->registry +
                HPDF_LIMIT_MAX_NAME_LEN);
    FUNC4 (attr->ordering, "Korea1", attr->ordering +
                HPDF_LIMIT_MAX_NAME_LEN);
    attr->suppliment = 0;
    attr->writing_mode = HPDF_WMODE_VERTICAL;
    attr->uid_offset = 310;
    attr->xuid[0] = 1;
    attr->xuid[1] = 10;
    attr->xuid[2] = 25401;

    encoder->type = HPDF_ENCODER_TYPE_DOUBLE_BYTE;

    return HPDF_OK;
}