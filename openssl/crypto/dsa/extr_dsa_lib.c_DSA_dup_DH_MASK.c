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
struct TYPE_3__ {int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/ * q; int /*<<< orphan*/ * g; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ DSA ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DH *FUNC6(const DSA *r)
{
    /*
     * DSA has p, q, g, optional pub_key, optional priv_key. DH has p,
     * optional length, g, optional pub_key, optional priv_key, optional q.
     */

    DH *ret = NULL;
    BIGNUM *p = NULL, *q = NULL, *g = NULL, *pub_key = NULL, *priv_key = NULL;

    if (r == NULL)
        goto err;
    ret = FUNC3();
    if (ret == NULL)
        goto err;
    if (r->p != NULL || r->g != NULL || r->q != NULL) {
        if (r->p == NULL || r->g == NULL || r->q == NULL) {
            /* Shouldn't happen */
            goto err;
        }
        p = FUNC0(r->p);
        g = FUNC0(r->g);
        q = FUNC0(r->q);
        if (p == NULL || g == NULL || q == NULL || !FUNC5(ret, p, q, g))
            goto err;
        p = g = q = NULL;
    }

    if (r->pub_key != NULL) {
        pub_key = FUNC0(r->pub_key);
        if (pub_key == NULL)
            goto err;
        if (r->priv_key != NULL) {
            priv_key = FUNC0(r->priv_key);
            if (priv_key == NULL)
                goto err;
        }
        if (!FUNC4(ret, pub_key, priv_key))
            goto err;
    } else if (r->priv_key != NULL) {
        /* Shouldn't happen */
        goto err;
    }

    return ret;

 err:
    FUNC1(p);
    FUNC1(g);
    FUNC1(q);
    FUNC1(pub_key);
    FUNC1(priv_key);
    FUNC2(ret);
    return NULL;
}