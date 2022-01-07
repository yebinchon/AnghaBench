
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ scanner_t ;
typedef int json_t ;


 int JSON_STRICT ;
 int * json_array_get (int *,size_t) ;
 size_t json_array_size (int *) ;
 int json_is_array (int *) ;
 int next_token (TYPE_1__*) ;
 int set_error (TYPE_1__*,char*,char*,...) ;
 int strchr (int ,long) ;
 long token (TYPE_1__*) ;
 long type_name (int *) ;
 scalar_t__ unpack (TYPE_1__*,int *,int *) ;
 int unpack_value_starters ;

__attribute__((used)) static int unpack_array(scanner_t *s, json_t *root, va_list *ap)
{
    size_t i = 0;
    int strict = 0;

    if(root && !json_is_array(root)) {
        set_error(s, "<validation>", "Expected array, got %s", type_name(root));
        return -1;
    }
    next_token(s);

    while(token(s) != ']') {
        json_t *value;

        if(strict != 0) {
            set_error(s, "<format>", "Expected ']' after '%c', got '%c'",
                      (strict == 1 ? '!' : '*'),
                      token(s));
            return -1;
        }

        if(!token(s)) {
            set_error(s, "<format>", "Unexpected end of format string");
            return -1;
        }

        if(token(s) == '!' || token(s) == '*') {
            strict = (token(s) == '!' ? 1 : -1);
            next_token(s);
            continue;
        }

        if(!strchr(unpack_value_starters, token(s))) {
            set_error(s, "<format>", "Unexpected format character '%c'",
                      token(s));
            return -1;
        }

        if(!root) {

            value = ((void*)0);
        }
        else {
            value = json_array_get(root, i);
            if(!value) {
                set_error(s, "<validation>", "Array index %lu out of range",
                          (unsigned long)i);
                return -1;
            }
        }

        if(unpack(s, value, ap))
            return -1;

        next_token(s);
        i++;
    }

    if(strict == 0 && (s->flags & JSON_STRICT))
        strict = 1;

    if(root && strict == 1 && i != json_array_size(root)) {
        long diff = (long)json_array_size(root) - (long)i;
        set_error(s, "<validation>", "%li array item(s) left unpacked", diff);
        return -1;
    }

    return 0;
}
