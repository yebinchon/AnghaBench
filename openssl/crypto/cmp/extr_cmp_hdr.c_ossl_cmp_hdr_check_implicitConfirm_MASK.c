#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  infoType; } ;
struct TYPE_5__ {int /*<<< orphan*/  generalInfo; } ;
typedef  TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef  TYPE_2__ OSSL_CMP_ITAV ;

/* Variables and functions */
 scalar_t__ NID_id_it_implicitConfirm ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(const OSSL_CMP_PKIHEADER *hdr)
{
    int itavCount;
    int i;
    OSSL_CMP_ITAV *itav;

    if (!FUNC1(hdr != NULL))
        return 0;

    itavCount = FUNC2(hdr->generalInfo);
    for (i = 0; i < itavCount; i++) {
        itav = FUNC3(hdr->generalInfo, i);
        if (itav != NULL
                && FUNC0(itav->infoType) == NID_id_it_implicitConfirm)
            return 1;
    }

    return 0;
}