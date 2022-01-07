
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * header_output; int * header; int * data; } ;
struct web_client {TYPE_1__ response; int user_agent; } ;
typedef int BUFFER ;


 int buffer_flush (int *) ;
 int freez (int ) ;
 int memset (struct web_client*,int ,int) ;

__attribute__((used)) static void web_client_zero(struct web_client *w) {



    BUFFER *b1 = w->response.data;
    BUFFER *b2 = w->response.header;
    BUFFER *b3 = w->response.header_output;


    buffer_flush(b1);
    buffer_flush(b2);
    buffer_flush(b3);

    freez(w->user_agent);


    memset(w, 0, sizeof(struct web_client));


    w->response.data = b1;
    w->response.header = b2;
    w->response.header_output = b3;
}
