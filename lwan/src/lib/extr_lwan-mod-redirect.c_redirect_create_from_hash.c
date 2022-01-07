
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_redirect_settings {int code; int to; } ;
struct hash {int dummy; } ;


 int HTTP_MOVED_PERMANENTLY ;
 int hash_find (struct hash const*,char*) ;
 int parse_http_code (int ,int ) ;
 void* redirect_create (char const*,struct lwan_redirect_settings*) ;

__attribute__((used)) static void *redirect_create_from_hash(const char *prefix,
                                       const struct hash *hash)
{
    struct lwan_redirect_settings settings = {
        .to = hash_find(hash, "to"),
        .code =
            parse_http_code(hash_find(hash, "code"), HTTP_MOVED_PERMANENTLY),
    };

    return redirect_create(prefix, &settings);
}
