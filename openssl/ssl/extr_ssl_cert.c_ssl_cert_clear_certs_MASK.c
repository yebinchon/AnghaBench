#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* pkeys; } ;
struct TYPE_4__ {scalar_t__ serverinfo_length; int /*<<< orphan*/ * serverinfo; int /*<<< orphan*/ * chain; int /*<<< orphan*/ * privatekey; int /*<<< orphan*/ * x509; } ;
typedef  TYPE_1__ CERT_PKEY ;
typedef  TYPE_2__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SSL_PKEY_NUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 

void FUNC4(CERT *c)
{
    int i;
    if (c == NULL)
        return;
    for (i = 0; i < SSL_PKEY_NUM; i++) {
        CERT_PKEY *cpk = c->pkeys + i;
        FUNC2(cpk->x509);
        cpk->x509 = NULL;
        FUNC0(cpk->privatekey);
        cpk->privatekey = NULL;
        FUNC3(cpk->chain, X509_free);
        cpk->chain = NULL;
        FUNC1(cpk->serverinfo);
        cpk->serverinfo = NULL;
        cpk->serverinfo_length = 0;
    }
}