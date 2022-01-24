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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int EXFLAG_SS ; 
 int NID_undef ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(SSL *s, SSL_CTX *ctx, X509 *x, int op)
{
    /* Lookup signature algorithm digest */
    int secbits, nid, pknid;
    /* Don't check signature if self signed */
    if ((FUNC0(x) & EXFLAG_SS) != 0)
        return 1;
    if (!FUNC1(x, &nid, &pknid, &secbits, NULL))
        secbits = -1;
    /* If digest NID not defined use signature NID */
    if (nid == NID_undef)
        nid = pknid;
    if (s)
        return FUNC3(s, op, secbits, nid, x);
    else
        return FUNC2(ctx, op, secbits, nid, x);
}