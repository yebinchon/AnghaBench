
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {scalar_t__ len; int * array; } ;



__attribute__((used)) static inline void strref_clear(struct strref *dst)
{
 dst->array = ((void*)0);
 dst->len = 0;
}
