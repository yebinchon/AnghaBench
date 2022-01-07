
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int value; } ;
struct lwan_request_parser_helper {int post_params; int post_data; TYPE_1__ content_type; } ;
struct lwan_request {struct lwan_request_parser_helper* helper; } ;
typedef int content_type ;


 scalar_t__ UNLIKELY (int ) ;
 int parse_key_values (struct lwan_request*,int *,int *,int ,char) ;
 int strncmp (int ,char const*,int) ;
 int url_decode ;

__attribute__((used)) static void parse_post_data(struct lwan_request *request)
{
    struct lwan_request_parser_helper *helper = request->helper;
    static const char content_type[] = "application/x-www-form-urlencoded";

    if (helper->content_type.len < sizeof(content_type) - 1)
        return;
    if (UNLIKELY(strncmp(helper->content_type.value, content_type,
                         sizeof(content_type) - 1)))
        return;

    parse_key_values(request, &helper->post_data, &helper->post_params,
                     url_decode, '&');
}
