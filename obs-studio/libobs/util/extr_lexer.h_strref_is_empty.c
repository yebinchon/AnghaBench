
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int * array; int len; } ;



__attribute__((used)) static inline bool strref_is_empty(const struct strref *str)
{
 return !str || !str->array || !str->len || !*str->array;
}
