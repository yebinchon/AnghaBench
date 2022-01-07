
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {scalar_t__ len; int array; } ;


 int strref_copy (struct strref*,struct strref const*) ;

__attribute__((used)) static inline void strref_add(struct strref *dst, const struct strref *t)
{
 if (!dst->array)
  strref_copy(dst, t);
 else
  dst->len += t->len;
}
