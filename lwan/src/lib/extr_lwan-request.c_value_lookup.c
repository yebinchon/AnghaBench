
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_key_value_array {int dummy; } ;
struct lwan_key_value {char* key; void* value; } ;
struct lwan_array {struct lwan_key_value* elements; int base; } ;
typedef int k ;


 scalar_t__ LIKELY (struct lwan_key_value*) ;
 struct lwan_key_value* bsearch (struct lwan_key_value*,int ,struct lwan_key_value*,int,int ) ;
 int key_value_compare ;

__attribute__((used)) static inline void *
value_lookup(const struct lwan_key_value_array *array, const char *key)
{
    const struct lwan_array *la = (const struct lwan_array *)array;

    if (LIKELY(la->elements)) {
        struct lwan_key_value k = { .key = (char *)key };
        struct lwan_key_value *entry;

        entry = bsearch(&k, la->base, la->elements, sizeof(k), key_value_compare);
        if (LIKELY(entry))
            return entry->value;
    }

    return ((void*)0);
}
