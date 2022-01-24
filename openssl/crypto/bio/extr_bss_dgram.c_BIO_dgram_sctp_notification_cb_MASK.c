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
struct TYPE_4__ {void* notification_context; int /*<<< orphan*/ * handle_notifications; } ;
typedef  TYPE_1__ bio_dgram_sctp_data ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/ * BIO_dgram_sctp_notification_handler_fn ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */

int FUNC0(BIO *b,
                BIO_dgram_sctp_notification_handler_fn handle_notifications,
                void *context)
{
    bio_dgram_sctp_data *data = (bio_dgram_sctp_data *) b->ptr;

    if (handle_notifications != NULL) {
        data->handle_notifications = handle_notifications;
        data->notification_context = context;
    } else
        return -1;

    return 0;
}