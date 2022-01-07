
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_free (struct dstr*) ;

__attribute__((used)) static inline void dstr_array_free(struct dstr *array, const size_t count)
{
 size_t i;
 for (i = 0; i < count; i++)
  dstr_free(array + i);
}
