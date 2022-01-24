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
struct TYPE_2__ {int /*<<< orphan*/ * mdctx; int /*<<< orphan*/  mdsize; int /*<<< orphan*/ * md; int /*<<< orphan*/  libctx; } ;
typedef  TYPE_1__ PROV_DSA_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 

__attribute__((used)) static int FUNC5(void *vpdsactx, const char *mdname,
                                      const char *props, void *vdsa)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    EVP_MD *md;

    if (!FUNC4(vpdsactx, vdsa))
        return 0;

    md = FUNC2(pdsactx->libctx, mdname, props);
    if (md == NULL)
        return 0;
    pdsactx->md = md;
    pdsactx->mdsize = FUNC3(md);
    pdsactx->mdctx = FUNC1();
    if (pdsactx->mdctx == NULL)
        return 0;

    if (!FUNC0(pdsactx->mdctx, md, NULL))
        return 0;

    return 1;
}