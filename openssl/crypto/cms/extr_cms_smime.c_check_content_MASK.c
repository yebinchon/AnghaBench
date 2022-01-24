#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_F_CHECK_CONTENT ; 
 int /*<<< orphan*/  CMS_R_NO_CONTENT ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(CMS_ContentInfo *cms)
{
    ASN1_OCTET_STRING **pos = FUNC0(cms);

    if (pos == NULL || *pos == NULL) {
        FUNC1(CMS_F_CHECK_CONTENT, CMS_R_NO_CONTENT);
        return 0;
    }
    return 1;
}