
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int scanner_t ;
typedef int json_t ;


 int * json_array () ;
 scalar_t__ json_array_append_new (int *,int *) ;
 int json_decref (int *) ;
 int next_token (int *) ;
 int * pack (int *,int *) ;
 int set_error (int *,char*,char*) ;
 char token (int *) ;

__attribute__((used)) static json_t *pack_array(scanner_t *s, va_list *ap)
{
    json_t *array = json_array();
    next_token(s);

    while(token(s) != ']') {
        json_t *value;

        if(!token(s)) {
            set_error(s, "<format>", "Unexpected end of format string");
            goto error;
        }

        value = pack(s, ap);
        if(!value)
            goto error;

        if(json_array_append_new(array, value)) {
            set_error(s, "<internal>", "Unable to append to array");
            goto error;
        }

        next_token(s);
    }
    return array;

error:
    json_decref(array);
    return ((void*)0);
}
