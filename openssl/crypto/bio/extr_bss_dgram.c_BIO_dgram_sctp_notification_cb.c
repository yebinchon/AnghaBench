
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* notification_context; int * handle_notifications; } ;
typedef TYPE_1__ bio_dgram_sctp_data ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef int * BIO_dgram_sctp_notification_handler_fn ;
typedef TYPE_2__ BIO ;



int BIO_dgram_sctp_notification_cb(BIO *b,
                BIO_dgram_sctp_notification_handler_fn handle_notifications,
                void *context)
{
    bio_dgram_sctp_data *data = (bio_dgram_sctp_data *) b->ptr;

    if (handle_notifications != ((void*)0)) {
        data->handle_notifications = handle_notifications;
        data->notification_context = context;
    } else
        return -1;

    return 0;
}
