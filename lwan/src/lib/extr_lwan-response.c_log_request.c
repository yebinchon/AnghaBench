
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int mime_type; } ;
struct TYPE_9__ {int value; } ;
struct lwan_request {int flags; TYPE_5__ response; TYPE_4__ original_url; TYPE_3__* conn; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_8__ {TYPE_2__* thread; } ;
struct TYPE_6__ {int date; } ;
struct TYPE_7__ {TYPE_1__ date; } ;


 int INET6_ADDRSTRLEN ;
 int REQUEST_IS_HTTP_1_0 ;
 int get_request_method (struct lwan_request*) ;
 int lwan_request_get_remote_address (struct lwan_request*,char*) ;
 int lwan_status_debug (char*,int ,int ,int ,int ,char*,int,int ) ;

__attribute__((used)) static void log_request(struct lwan_request *request,
                        enum lwan_http_status status)
{
    char ip_buffer[INET6_ADDRSTRLEN];

    lwan_status_debug("%s [%s] \"%s %s HTTP/%s\" %d %s",
                      lwan_request_get_remote_address(request, ip_buffer),
                      request->conn->thread->date.date,
                      get_request_method(request), request->original_url.value,
                      request->flags & REQUEST_IS_HTTP_1_0 ? "1.0" : "1.1",
                      status, request->response.mime_type);
}
