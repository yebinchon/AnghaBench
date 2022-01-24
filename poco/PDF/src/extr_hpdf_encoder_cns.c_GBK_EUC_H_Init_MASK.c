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
struct TYPE_12__ {int suppliment; int uid_offset; int* xuid; scalar_t__ ordering; scalar_t__ registry; int /*<<< orphan*/  is_trial_byte_fn; int /*<<< orphan*/  is_lead_byte_fn; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_1__* error; scalar_t__ attr; } ;
struct TYPE_10__ {scalar_t__ error_no; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Encoder ;
typedef  TYPE_3__* HPDF_CMapEncoderAttr ;

/* Variables and functions */
 int /*<<< orphan*/  CMAP_ARRAY_GBK_EUC_H ; 
 int /*<<< orphan*/  CP936_UNICODE_ARRAY ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GBK_EUC_IsLeadByte ; 
 int /*<<< orphan*/  GBK_EUC_IsTrialByte ; 
 int /*<<< orphan*/  GBK_EUC_NOTDEF_RANGE ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_ENCODER_TYPE_DOUBLE_BYTE ; 
 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,scalar_t__) ; 

__attribute__((used)) static HPDF_STATUS
FUNC6  (HPDF_Encoder  encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_STATUS ret;

    if ((ret = FUNC3 (encoder)) != HPDF_OK)
        return ret;

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if (FUNC1 (encoder, CMAP_ARRAY_GBK_EUC_H) != HPDF_OK)
        return encoder->error->error_no;

    if ((ret = FUNC0 (encoder)) != HPDF_OK)
        return ret;

    if (FUNC2 (encoder, GBK_EUC_NOTDEF_RANGE)
                != HPDF_OK)
        return encoder->error->error_no;

    FUNC4 (encoder, CP936_UNICODE_ARRAY);

    attr->is_lead_byte_fn = GBK_EUC_IsLeadByte;
    attr->is_trial_byte_fn = GBK_EUC_IsTrialByte;
    FUNC5 (attr->registry, "Adobe", attr->registry +
                HPDF_LIMIT_MAX_NAME_LEN);
    FUNC5 (attr->ordering, "GB1", attr->ordering +
                HPDF_LIMIT_MAX_NAME_LEN);
    attr->suppliment = 2;
    attr->uid_offset = -1;
    attr->xuid[0] = 1;
    attr->xuid[1] = 10;
    attr->xuid[2] = 25377;

    encoder->type = HPDF_ENCODER_TYPE_DOUBLE_BYTE;

    return HPDF_OK;
}