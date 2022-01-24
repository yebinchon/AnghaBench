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
struct TYPE_3__ {int /*<<< orphan*/ * messageTime; } ;
typedef  TYPE_1__ OSSL_CMP_PKIHEADER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(OSSL_CMP_PKIHEADER *hdr)
{
    if (!FUNC2(hdr != NULL))
        return 0;
    if (hdr->messageTime == NULL
            && (hdr->messageTime = FUNC0()) == NULL)
        return 0;
    return FUNC1(hdr->messageTime, FUNC3(NULL)) != NULL;
}