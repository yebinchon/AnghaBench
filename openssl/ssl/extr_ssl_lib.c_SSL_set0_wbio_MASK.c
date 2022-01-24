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
struct TYPE_3__ {int /*<<< orphan*/ * wbio; int /*<<< orphan*/ * bbio; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(SSL *s, BIO *wbio)
{
    /*
     * If the output buffering BIO is still in place, remove it
     */
    if (s->bbio != NULL)
        s->wbio = FUNC1(s->wbio);

    FUNC0(s->wbio);
    s->wbio = wbio;

    /* Re-attach |bbio| to the new |wbio|. */
    if (s->bbio != NULL)
        s->wbio = FUNC2(s->bbio, s->wbio);
}