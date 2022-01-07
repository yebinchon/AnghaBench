
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct web_client {TYPE_1__ response; } ;


 int buffer_flush (int ) ;
 int buffer_sprintf (int ,char*) ;

int rrdpush_receiver_too_busy_now(struct web_client *w) {


    buffer_flush(w->response.data);
    buffer_sprintf(w->response.data, "The server is too busy now to accept this request. Try later.");
    return 503;
}
