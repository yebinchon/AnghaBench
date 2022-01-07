
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_reverse_proxy_data {int * linked_conn; } ;
struct TYPE_4__ {TYPE_1__* linked_conn; } ;
struct mg_http_proto_data {TYPE_2__ reverse_proxy_data; } ;
struct TYPE_3__ {int flags; } ;


 int MG_F_SEND_AND_CLOSE ;
 struct mg_http_proto_data* mg_http_get_proto_data (int *) ;

__attribute__((used)) static void mg_http_free_reverse_proxy_data(struct mg_reverse_proxy_data *rpd) {
  if (rpd->linked_conn != ((void*)0)) {





    struct mg_http_proto_data *pd = mg_http_get_proto_data(rpd->linked_conn);
    if (pd->reverse_proxy_data.linked_conn != ((void*)0)) {
      pd->reverse_proxy_data.linked_conn->flags |= MG_F_SEND_AND_CLOSE;
      pd->reverse_proxy_data.linked_conn = ((void*)0);
    }
    rpd->linked_conn = ((void*)0);
  }
}
