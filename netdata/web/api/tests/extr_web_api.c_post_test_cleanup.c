
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int header_output; int header; int data; } ;
struct web_client {TYPE_1__ response; } ;


 int buffer_free (int ) ;
 int free (struct web_client*) ;
 struct web_client* localhost ;

__attribute__((used)) static void post_test_cleanup(struct web_client *w)
{
    buffer_free(w->response.data);
    buffer_free(w->response.header);
    buffer_free(w->response.header_output);
    free(w);
    free(localhost);
}
