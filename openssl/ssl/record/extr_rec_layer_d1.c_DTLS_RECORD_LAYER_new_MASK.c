#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * q; } ;
struct TYPE_10__ {int /*<<< orphan*/ * q; } ;
struct TYPE_9__ {int /*<<< orphan*/ * q; } ;
struct TYPE_13__ {TYPE_3__ buffered_app_data; TYPE_2__ processed_rcds; TYPE_1__ unprocessed_rcds; } ;
struct TYPE_12__ {TYPE_5__* d; } ;
typedef  TYPE_4__ RECORD_LAYER ;
typedef  TYPE_5__ DTLS_RECORD_LAYER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  SSL_F_DTLS_RECORD_LAYER_NEW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 () ; 

int FUNC5(RECORD_LAYER *rl)
{
    DTLS_RECORD_LAYER *d;

    if ((d = FUNC1(sizeof(*d))) == NULL) {
        FUNC2(SSL_F_DTLS_RECORD_LAYER_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    rl->d = d;

    d->unprocessed_rcds.q = FUNC4();
    d->processed_rcds.q = FUNC4();
    d->buffered_app_data.q = FUNC4();

    if (d->unprocessed_rcds.q == NULL || d->processed_rcds.q == NULL
        || d->buffered_app_data.q == NULL) {
        FUNC3(d->unprocessed_rcds.q);
        FUNC3(d->processed_rcds.q);
        FUNC3(d->buffered_app_data.q);
        FUNC0(d);
        rl->d = NULL;
        return 0;
    }

    return 1;
}