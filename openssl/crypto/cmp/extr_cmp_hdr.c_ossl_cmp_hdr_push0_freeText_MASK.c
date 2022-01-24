#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * freeText; } ;
typedef  TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef  int /*<<< orphan*/  ASN1_UTF8STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(OSSL_CMP_PKIHEADER *hdr, ASN1_UTF8STRING *text)
{
    if (!FUNC0(hdr != NULL && text != NULL))
        return 0;

    if (hdr->freeText == NULL
            && (hdr->freeText = FUNC1()) == NULL)
        return 0;

    return FUNC2(hdr->freeText, text);
}