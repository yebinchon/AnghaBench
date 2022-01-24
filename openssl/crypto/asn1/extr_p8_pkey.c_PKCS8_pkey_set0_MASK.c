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
struct TYPE_3__ {int /*<<< orphan*/  pkey; int /*<<< orphan*/  pkeyalg; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ PKCS8_PRIV_KEY_INFO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void*) ; 

int FUNC3(PKCS8_PRIV_KEY_INFO *priv, ASN1_OBJECT *aobj,
                    int version,
                    int ptype, void *pval, unsigned char *penc, int penclen)
{
    if (version >= 0) {
        if (!FUNC0(priv->version, version))
            return 0;
    }
    if (!FUNC2(priv->pkeyalg, aobj, ptype, pval))
        return 0;
    if (penc)
        FUNC1(priv->pkey, penc, penclen);
    return 1;
}