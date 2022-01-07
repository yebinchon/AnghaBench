
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_response_settings {int code; } ;
struct hash {int dummy; } ;
typedef enum lwan_http_status { ____Placeholder_lwan_http_status } lwan_http_status ;


 char* hash_find (struct hash const*,char*) ;
 int lwan_status_error (char*,...) ;
 int parse_int (char const*,int) ;
 void* response_create (char const*,struct lwan_response_settings*) ;

__attribute__((used)) static void *response_create_from_hash(const char *prefix,
                                       const struct hash *hash)
{
    const char *code = hash_find(hash, "code");

    if (!code) {
        lwan_status_error("`code` not supplied");
        return ((void*)0);
    }

    struct lwan_response_settings settings = {
        .code = (enum lwan_http_status)parse_int(code, 999)
    };

    if (settings.code == 999) {
        lwan_status_error("Unknown error code: %s", code);
        return ((void*)0);
    }

    return response_create(prefix, &settings);
}
