
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; scalar_t__ len; scalar_t__ capacity; } ;


 scalar_t__ strlen (char*) ;

__attribute__((used)) static inline void dstr_init_move_array(struct dstr *dst, char *str)
{
 dst->array = str;
 dst->len = (!str) ? 0 : strlen(str);
 dst->capacity = dst->len + 1;
}
