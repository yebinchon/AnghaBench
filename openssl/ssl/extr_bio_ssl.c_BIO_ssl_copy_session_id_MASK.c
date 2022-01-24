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
struct TYPE_3__ {int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ BIO_SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TYPE_SSL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(BIO *t, BIO *f)
{
    BIO_SSL *tdata, *fdata;
    t = FUNC0(t, BIO_TYPE_SSL);
    f = FUNC0(f, BIO_TYPE_SSL);
    if ((t == NULL) || (f == NULL))
        return 0;
    tdata = FUNC1(t);
    fdata = FUNC1(f);
    if ((tdata->ssl == NULL) || (fdata->ssl == NULL))
        return 0;
    if (!FUNC2(tdata->ssl, (fdata->ssl)))
        return 0;
    return 1;
}