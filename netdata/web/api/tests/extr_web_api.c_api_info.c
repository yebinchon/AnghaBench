
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct web_client {int flags; TYPE_1__ response; } ;


 size_t MAX_HEADERS ;
 int WEB_CLIENT_FLAG_WAIT_RECEIVE ;
 int assert_int_equal (int,int ) ;
 int build_request (int ,char*,int,size_t) ;
 int post_test_cleanup (struct web_client*) ;
 struct web_client* pre_test_setup () ;
 int web_client_process_request (struct web_client*) ;

__attribute__((used)) static void api_info(void **state)
{
    for (size_t i = 0; i < MAX_HEADERS; i++) {
        struct web_client *w = pre_test_setup();
        build_request(w->response.data, "/api/v1/info", 1, i);
        web_client_process_request(w);
        assert_int_equal(w->flags & WEB_CLIENT_FLAG_WAIT_RECEIVE, 0);
        post_test_cleanup(w);
    }
}
