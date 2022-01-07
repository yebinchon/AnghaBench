
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* value; size_t len; } ;
struct lwan_request_parser_helper {TYPE_2__ query_string; } ;
struct TYPE_3__ {char* value; size_t len; } ;
struct lwan_request {TYPE_1__ url; struct lwan_request_parser_helper* helper; } ;


 scalar_t__ UNLIKELY (int ) ;
 char* memchr (char*,char,size_t) ;
 char* memrchr (char*,char,size_t) ;

__attribute__((used)) static void parse_fragment_and_query(struct lwan_request *request,
                                     const char *space)
{
    struct lwan_request_parser_helper *helper = request->helper;



    char *fragment = memrchr(request->url.value, '#', request->url.len);
    if (UNLIKELY(fragment != ((void*)0))) {
        *fragment = '\0';
        request->url.len = (size_t)(fragment - request->url.value);
        space = fragment;
    }

    char *query_string = memchr(request->url.value, '?', request->url.len);
    if (query_string) {
        *query_string = '\0';
        helper->query_string.value = query_string + 1;
        helper->query_string.len = (size_t)(space - query_string - 1);
        request->url.len -= helper->query_string.len + 1;
    }
}
