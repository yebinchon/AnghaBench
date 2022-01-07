
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {char* value; size_t length; } ;
typedef TYPE_1__ json_string_t ;


 int json_is_string (int *) ;
 TYPE_1__* json_to_string (int *) ;
 int jsonp_free (char*) ;
 char* jsonp_strndup (char const*,size_t) ;

int json_string_setn_nocheck(json_t *json, const char *value, size_t len)
{
    char *dup;
    json_string_t *string;

    if(!json_is_string(json) || !value)
        return -1;

    dup = jsonp_strndup(value, len);
    if(!dup)
        return -1;

    string = json_to_string(json);
    jsonp_free(string->value);
    string->value = dup;
    string->length = len;

    return 0;
}
