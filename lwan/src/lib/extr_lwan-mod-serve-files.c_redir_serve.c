
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redir_cache_data {int redir_to; } ;
struct lwan_request {int dummy; } ;
struct lwan_key_value {char* key; int value; } ;
struct file_cache_entry {struct redir_cache_data redir_cache_data; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;


 int HTTP_MOVED_PERMANENTLY ;
 int serve_buffer (struct lwan_request*,struct file_cache_entry*,struct lwan_key_value const*,int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static enum lwan_http_status redir_serve(struct lwan_request *request,
                                         void *data)
{
    struct file_cache_entry *fce = data;
    struct redir_cache_data *rd = &fce->redir_cache_data;
    const struct lwan_key_value headers = {.key = "Location",
                                           .value = rd->redir_to};

    return serve_buffer(request, fce, &headers, rd->redir_to,
                        strlen(rd->redir_to), HTTP_MOVED_PERMANENTLY);
}
