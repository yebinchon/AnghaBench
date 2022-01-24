#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; } ;
typedef  TYPE_1__ CMS_RecipientInfo ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_F_CMS_RECIPIENTINFO_ENCRYPT ; 
#define  CMS_RECIPINFO_AGREE 131 
#define  CMS_RECIPINFO_KEK 130 
#define  CMS_RECIPINFO_PASS 129 
#define  CMS_RECIPINFO_TRANS 128 
 int /*<<< orphan*/  CMS_R_UNSUPPORTED_RECIPIENT_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,TYPE_1__*,int) ; 

int FUNC5(const CMS_ContentInfo *cms, CMS_RecipientInfo *ri)
{
    switch (ri->type) {
    case CMS_RECIPINFO_TRANS:
        return FUNC3(cms, ri);

    case CMS_RECIPINFO_AGREE:
        return FUNC1(cms, ri);

    case CMS_RECIPINFO_KEK:
        return FUNC2(cms, ri);

    case CMS_RECIPINFO_PASS:
        return FUNC4(cms, ri, 1);

    default:
        FUNC0(CMS_F_CMS_RECIPIENTINFO_ENCRYPT,
               CMS_R_UNSUPPORTED_RECIPIENT_TYPE);
        return 0;
    }
}