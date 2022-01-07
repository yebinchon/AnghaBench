
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int free (int *) ;
 int * mpc_count (int,int ,int *,int (*) (int *)) ;
 int * mpc_many (int ,int *) ;
 int * mpc_many1 (int ,int *) ;
 int * mpc_maybe_lift (int *,int ) ;
 int mpcf_ctor_str ;
 int mpcf_strfold ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static mpc_val_t *mpcf_re_repeat(int n, mpc_val_t **xs) {
  int num;
  (void) n;
  if (!xs[1]) { return xs[0]; }
  if (strcmp(xs[1], "*") == 0) { free(xs[1]); return mpc_many(mpcf_strfold, xs[0]); }
  if (strcmp(xs[1], "+") == 0) { free(xs[1]); return mpc_many1(mpcf_strfold, xs[0]); }
  if (strcmp(xs[1], "?") == 0) { free(xs[1]); return mpc_maybe_lift(xs[0], mpcf_ctor_str); }
  num = *(int*)xs[1];
  free(xs[1]);

  return mpc_count(num, mpcf_strfold, xs[0], free);
}
