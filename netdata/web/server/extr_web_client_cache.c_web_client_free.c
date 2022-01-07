
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * conn; } ;
struct TYPE_3__ {int data; int header; int header_output; } ;
struct web_client {TYPE_2__ ssl; struct web_client* user_agent; TYPE_1__ response; } ;


 int SSL_free (int *) ;
 int buffer_free (int ) ;
 int freez (struct web_client*) ;
 scalar_t__ netdata_srv_ctx ;
 int web_client_check_unix (struct web_client*) ;

__attribute__((used)) static void web_client_free(struct web_client *w) {
    buffer_free(w->response.header_output);
    buffer_free(w->response.header);
    buffer_free(w->response.data);
    freez(w->user_agent);
    freez(w);
}
