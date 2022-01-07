
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mpc_input_t ;
struct TYPE_9__ {scalar_t__ pos; } ;
struct TYPE_8__ {int expected_num; int * expected; int recieved; int * failure; TYPE_2__ state; int * filename; } ;
typedef TYPE_1__ mpc_err_t ;


 int mpc_err_add_expected (int *,TYPE_1__*,int ) ;
 int mpc_err_contains_expected (int *,TYPE_1__*,int ) ;
 int mpc_err_delete_internal (int *,TYPE_1__*) ;
 void* mpc_malloc (int *,int) ;
 TYPE_2__ mpc_state_invalid () ;
 int strcpy (int *,int *) ;
 int strlen (int *) ;

__attribute__((used)) static mpc_err_t *mpc_err_or(mpc_input_t *i, mpc_err_t** x, int n) {

  int j, k, fst;
  mpc_err_t *e;

  fst = -1;
  for (j = 0; j < n; j++) {
    if (x[j] != ((void*)0)) { fst = j; }
  }

  if (fst == -1) { return ((void*)0); }

  e = mpc_malloc(i, sizeof(mpc_err_t));
  e->state = mpc_state_invalid();
  e->expected_num = 0;
  e->expected = ((void*)0);
  e->failure = ((void*)0);
  e->filename = mpc_malloc(i, strlen(x[fst]->filename)+1);
  strcpy(e->filename, x[fst]->filename);

  for (j = 0; j < n; j++) {
    if (!x[j]) { continue; }
    if (x[j]->state.pos > e->state.pos) { e->state = x[j]->state; }
  }

  for (j = 0; j < n; j++) {
    if (!x[j]) { continue; }
    if (x[j]->state.pos < e->state.pos) { continue; }

    if (x[j]->failure) {
      e->failure = mpc_malloc(i, strlen(x[j]->failure)+1);
      strcpy(e->failure, x[j]->failure);
      break;
    }

    e->recieved = x[j]->recieved;

    for (k = 0; k < x[j]->expected_num; k++) {
      if (!mpc_err_contains_expected(i, e, x[j]->expected[k])) {
        mpc_err_add_expected(i, e, x[j]->expected[k]);
      }
    }
  }

  for (j = 0; j < n; j++) {
    if (!x[j]) { continue; }
    mpc_err_delete_internal(i, x[j]);
  }

  return e;
}
