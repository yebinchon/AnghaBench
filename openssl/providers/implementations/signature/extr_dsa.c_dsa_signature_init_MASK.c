#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* dsa; } ;
typedef  TYPE_1__ PROV_DSA_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(void *vpdsactx, void *vdsa)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx == NULL || vdsa == NULL || !FUNC1(vdsa))
        return 0;
    FUNC0(pdsactx->dsa);
    pdsactx->dsa = vdsa;
    return 1;
}