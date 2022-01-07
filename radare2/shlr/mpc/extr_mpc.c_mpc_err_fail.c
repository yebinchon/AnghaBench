
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* filename; int state; scalar_t__ suppress; } ;
typedef TYPE_1__ mpc_input_t ;
struct TYPE_7__ {char recieved; void* failure; int * expected; scalar_t__ expected_num; int state; void* filename; } ;
typedef TYPE_2__ mpc_err_t ;


 void* mpc_malloc (TYPE_1__*,int) ;
 int strcpy (void*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static mpc_err_t *mpc_err_fail(mpc_input_t *i, const char *failure) {
  mpc_err_t *x;
  if (i->suppress) { return ((void*)0); }
  x = mpc_malloc(i, sizeof(mpc_err_t));
  x->filename = mpc_malloc(i, strlen(i->filename) + 1);
  strcpy(x->filename, i->filename);
  x->state = i->state;
  x->expected_num = 0;
  x->expected = ((void*)0);
  x->failure = mpc_malloc(i, strlen(failure) + 1);
  strcpy(x->failure, failure);
  x->recieved = ' ';
  return x;
}
