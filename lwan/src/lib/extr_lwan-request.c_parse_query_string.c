
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_request_parser_helper {int query_params; int query_string; } ;
struct lwan_request {struct lwan_request_parser_helper* helper; } ;


 int parse_key_values (struct lwan_request*,int *,int *,int ,char) ;
 int url_decode ;

__attribute__((used)) static void parse_query_string(struct lwan_request *request)
{
    struct lwan_request_parser_helper *helper = request->helper;

    parse_key_values(request, &helper->query_string, &helper->query_params,
                     url_decode, '&');
}
