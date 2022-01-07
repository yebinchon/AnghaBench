
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {char* value; size_t length; int json; } ;
typedef TYPE_1__ json_string_t ;


 int JSON_STRING ;
 int json_init (int *,int ) ;
 int jsonp_free (char*) ;
 TYPE_1__* jsonp_malloc (int) ;
 char* jsonp_strndup (char const*,size_t) ;

__attribute__((used)) static json_t *string_create(const char *value, size_t len, int own)
{
    char *v;
    json_string_t *string;

    if(!value)
        return ((void*)0);

    if(own)
        v = (char *)value;
    else {
        v = jsonp_strndup(value, len);
        if(!v)
            return ((void*)0);
    }

    string = jsonp_malloc(sizeof(json_string_t));
    if(!string) {
        if(!own)
            jsonp_free(v);
        return ((void*)0);
    }
    json_init(&string->json, JSON_STRING);
    string->value = v;
    string->length = len;

    return &string->json;
}
