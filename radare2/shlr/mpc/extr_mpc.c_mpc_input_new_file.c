
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_state_t ;
struct TYPE_3__ {int backtrack; int marks_slots; char last; int mem_full; scalar_t__ mem_index; void* lasts; void* marks; scalar_t__ marks_num; scalar_t__ suppress; int * file; int * buffer; int * string; int state; int type; void* filename; } ;
typedef TYPE_1__ mpc_input_t ;
typedef int FILE ;


 int MPC_INPUT_FILE ;
 int MPC_INPUT_MARKS_MIN ;
 int MPC_INPUT_MEM_NUM ;
 void* malloc (int) ;
 int memset (int ,int ,int) ;
 int mpc_state_new () ;
 int strcpy (void*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static mpc_input_t *mpc_input_new_file(const char *filename, FILE *file) {

  mpc_input_t *i = malloc(sizeof(mpc_input_t));

  i->filename = malloc(strlen(filename) + 1);
  strcpy(i->filename, filename);
  i->type = MPC_INPUT_FILE;
  i->state = mpc_state_new();

  i->string = ((void*)0);
  i->buffer = ((void*)0);
  i->file = file;

  i->suppress = 0;
  i->backtrack = 1;
  i->marks_num = 0;
  i->marks_slots = MPC_INPUT_MARKS_MIN;
  i->marks = malloc(sizeof(mpc_state_t) * i->marks_slots);
  i->lasts = malloc(sizeof(char) * i->marks_slots);
  i->last = '\0';

  i->mem_index = 0;
  memset(i->mem_full, 0, sizeof(char) * MPC_INPUT_MEM_NUM);

  return i;
}
