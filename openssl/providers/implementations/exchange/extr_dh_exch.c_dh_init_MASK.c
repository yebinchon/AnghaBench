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
struct TYPE_2__ {void* dh; } ;
typedef  TYPE_1__ PROV_DH_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(void *vpdhctx, void *vdh)
{
    PROV_DH_CTX *pdhctx = (PROV_DH_CTX *)vpdhctx;

    if (pdhctx == NULL || vdh == NULL || !FUNC1(vdh))
        return 0;
    FUNC0(pdhctx->dh);
    pdhctx->dh = vdh;
    return 1;
}