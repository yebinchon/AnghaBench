
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_value {char* value; int len; } ;
struct lwan_request {TYPE_1__* helper; } ;
struct TYPE_2__ {int cookies; } ;


 int identity_decode ;
 char* lwan_request_get_header (struct lwan_request*,char*) ;
 int parse_key_values (struct lwan_request*,struct lwan_value*,int *,int ,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void parse_cookies(struct lwan_request *request)
{
    const char *cookies = lwan_request_get_header(request, "Cookie");

    if (!cookies)
        return;

    struct lwan_value header = {.value = (char *)cookies,
                                .len = strlen(cookies)};
    parse_key_values(request, &header, &request->helper->cookies,
                     identity_decode, ';');
}
