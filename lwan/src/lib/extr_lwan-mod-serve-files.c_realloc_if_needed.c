
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_value {size_t len; char* value; } ;


 char* realloc (char*,size_t) ;

__attribute__((used)) static void realloc_if_needed(struct lwan_value *value, size_t bound)
{
    if (bound > value->len) {
        char *tmp = realloc(value->value, value->len);

        if (tmp)
            value->value = tmp;
    }
}
