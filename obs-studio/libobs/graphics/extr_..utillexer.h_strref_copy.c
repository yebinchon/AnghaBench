
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; int array; } ;



__attribute__((used)) static inline void strref_copy(struct strref *dst, const struct strref *src)
{
 dst->array = src->array;
 dst->len = src->len;
}
