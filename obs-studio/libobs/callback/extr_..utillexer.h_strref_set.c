
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {char const* array; size_t len; } ;



__attribute__((used)) static inline void strref_set(struct strref *dst, const char *array, size_t len)
{
 dst->array = array;
 dst->len = len;
}
