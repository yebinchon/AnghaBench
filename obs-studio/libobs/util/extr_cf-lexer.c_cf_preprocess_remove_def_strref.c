
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {int dummy; } ;
struct TYPE_2__ {struct cf_def* array; } ;
struct cf_preprocessor {TYPE_1__ defines; } ;
struct cf_def {int dummy; } ;


 size_t INVALID_INDEX ;
 int cf_def_free (struct cf_def*) ;
 size_t cf_preprocess_get_def_idx (struct cf_preprocessor*,struct strref const*) ;
 int da_erase (TYPE_1__,size_t) ;

__attribute__((used)) static inline void cf_preprocess_remove_def_strref(struct cf_preprocessor *pp,
         const struct strref *ref)
{
 size_t def_idx = cf_preprocess_get_def_idx(pp, ref);
 if (def_idx != INVALID_INDEX) {
  struct cf_def *array = pp->defines.array;
  cf_def_free(array + def_idx);
  da_erase(pp->defines, def_idx);
 }
}
