
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char recieved; void* failure; int * expected; scalar_t__ expected_num; int state; void* filename; } ;
typedef TYPE_1__ mpc_err_t ;


 void* malloc (int) ;
 int mpc_state_new () ;
 int strcpy (void*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static mpc_err_t *mpc_err_file(const char *filename, const char *failure) {
  mpc_err_t *x;
  x = malloc(sizeof(mpc_err_t));
  x->filename = malloc(strlen(filename) + 1);
  strcpy(x->filename, filename);
  x->state = mpc_state_new();
  x->expected_num = 0;
  x->expected = ((void*)0);
  x->failure = malloc(strlen(failure) + 1);
  strcpy(x->failure, failure);
  x->recieved = ' ';
  return x;
}
