
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct serve_files_priv {int cache; } ;
struct TYPE_10__ {int * callback; struct file_cache_entry* data; } ;
struct lwan_response {TYPE_5__ stream; int mime_type; } ;
struct TYPE_7__ {int value; } ;
struct lwan_request {int flags; TYPE_2__ url; TYPE_1__* conn; } ;
struct TYPE_8__ {int integer; } ;
struct file_cache_entry {TYPE_4__* funcs; int mime_type; TYPE_3__ last_modified; } ;
struct cache_entry {int dummy; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
struct TYPE_9__ {int * serve; } ;
struct TYPE_6__ {int coro; } ;


 int HTTP_NOT_FOUND ;
 int HTTP_NOT_MODIFIED ;
 int HTTP_OK ;
 int RESPONSE_STREAM ;
 scalar_t__ UNLIKELY (int) ;
 struct cache_entry* cache_coro_get_and_ref_entry (int ,int ,int ) ;
 scalar_t__ client_has_fresh_content (struct lwan_request*,int ) ;

__attribute__((used)) static enum lwan_http_status
serve_files_handle_request(struct lwan_request *request,
                           struct lwan_response *response,
                           void *instance)
{
    struct serve_files_priv *priv = instance;
    enum lwan_http_status return_status;
    struct file_cache_entry *fce;
    struct cache_entry *ce;

    ce = cache_coro_get_and_ref_entry(priv->cache, request->conn->coro,
                                      request->url.value);
    if (UNLIKELY(!ce)) {
        return_status = HTTP_NOT_FOUND;
        goto out;
    }

    fce = (struct file_cache_entry *)ce;
    if (client_has_fresh_content(request, fce->last_modified.integer)) {
        return_status = HTTP_NOT_MODIFIED;
        goto out;
    }

    response->mime_type = fce->mime_type;
    response->stream.callback = fce->funcs->serve;
    response->stream.data = fce;

    request->flags |= RESPONSE_STREAM;

    return HTTP_OK;

out:
    response->stream.callback = ((void*)0);
    return return_status;
}
