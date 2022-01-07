
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__ capacity; scalar_t__ len; int * array; } ;



__attribute__((used)) static inline void dstr_init(struct dstr *dst)
{
 dst->array = ((void*)0);
 dst->len = 0;
 dst->capacity = 0;
}
