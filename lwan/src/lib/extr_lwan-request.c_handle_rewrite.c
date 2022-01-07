
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_request_parser_helper {int urls_rewritten; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ value; } ;
struct lwan_request {TYPE_1__ url; int flags; struct lwan_request_parser_helper* helper; } ;


 int HTTP_INTERNAL_ERROR ;
 int RESPONSE_URL_REWRITTEN ;
 scalar_t__ UNLIKELY (int) ;
 int lwan_default_response (struct lwan_request*,int ) ;
 int parse_fragment_and_query (struct lwan_request*,scalar_t__) ;

__attribute__((used)) static bool handle_rewrite(struct lwan_request *request)
{
    struct lwan_request_parser_helper *helper = request->helper;

    request->flags &= ~RESPONSE_URL_REWRITTEN;

    parse_fragment_and_query(request, request->url.value + request->url.len);

    helper->urls_rewritten++;
    if (UNLIKELY(helper->urls_rewritten > 4)) {
        lwan_default_response(request, HTTP_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
