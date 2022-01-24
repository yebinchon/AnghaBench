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
 scalar_t__ BIO_TYPE_SSL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(BIO *b)
{
    BIO_SSL *bdata;

    for (; b != NULL; b = FUNC2(b)) {
        if (FUNC1(b) != BIO_TYPE_SSL)
            continue;
        bdata = FUNC0(b);
        if (bdata != NULL && bdata->ssl != NULL)
            FUNC3(bdata->ssl);
    }
}