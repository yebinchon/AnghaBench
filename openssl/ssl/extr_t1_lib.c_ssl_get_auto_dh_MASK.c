#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* cert; TYPE_2__* new_cipher; } ;
struct TYPE_12__ {TYPE_4__ tmp; } ;
struct TYPE_13__ {TYPE_5__ s3; TYPE_1__* cert; } ;
struct TYPE_10__ {int /*<<< orphan*/  privatekey; } ;
struct TYPE_9__ {int algorithm_auth; int strength_bits; } ;
struct TYPE_8__ {int dh_tmp_auto; } ;
typedef  TYPE_6__ SSL ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int SSL_aNULL ; 
 int SSL_aPSK ; 

DH *FUNC11(SSL *s)
{
    int dh_secbits = 80;
    if (s->cert->dh_tmp_auto == 2)
        return FUNC6();
    if (s->s3.tmp.new_cipher->algorithm_auth & (SSL_aNULL | SSL_aPSK)) {
        if (s->s3.tmp.new_cipher->strength_bits == 256)
            dh_secbits = 128;
        else
            dh_secbits = 80;
    } else {
        if (s->s3.tmp.cert == NULL)
            return NULL;
        dh_secbits = FUNC10(s->s3.tmp.cert->privatekey);
    }

    if (dh_secbits >= 128) {
        DH *dhp = FUNC8();
        BIGNUM *p, *g;
        if (dhp == NULL)
            return NULL;
        g = FUNC3();
        if (g == NULL || !FUNC4(g, 2)) {
            FUNC5(dhp);
            FUNC0(g);
            return NULL;
        }
        if (dh_secbits >= 192)
            p = FUNC2(NULL);
        else
            p = FUNC1(NULL);
        if (p == NULL || !FUNC9(dhp, p, NULL, g)) {
            FUNC5(dhp);
            FUNC0(p);
            FUNC0(g);
            return NULL;
        }
        return dhp;
    }
    if (dh_secbits >= 112)
        return FUNC7();
    return FUNC6();
}