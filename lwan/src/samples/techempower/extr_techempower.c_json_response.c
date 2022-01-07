
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_response {char* mime_type; int buffer; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;
typedef int JsonNode ;


 int HTTP_INTERNAL_ERROR ;
 int HTTP_OK ;
 scalar_t__ UNLIKELY (int) ;
 int free (char*) ;
 int json_delete (int *) ;
 char* json_stringify_length (int *,int *,size_t*) ;
 int lwan_strbuf_set (int ,char*,size_t) ;

__attribute__((used)) static enum lwan_http_status
json_response(struct lwan_response *response, JsonNode *node)
{
    size_t length;
    char *serialized;

    serialized = json_stringify_length(node, ((void*)0), &length);
    json_delete(node);
    if (UNLIKELY(!serialized))
        return HTTP_INTERNAL_ERROR;

    lwan_strbuf_set(response->buffer, serialized, length);
    free(serialized);

    response->mime_type = "application/json";
    return HTTP_OK;
}
