
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ state; int err; unsigned int amount_of_read_chars; } ;
struct TYPE_8__ {char* type_str; } ;
typedef TYPE_1__ STypeCodeStr ;
typedef TYPE_2__ SStateInfo ;
typedef int EDemanglerErr ;


 int R_FREE (char*) ;
 int eDemanglerErrMemoryAllocation ;
 int eDemanglerErrOK ;
 int eDemanglerErrUncorrectMangledSymbol ;
 int eDemanglerErrUnsupportedMangling ;
 scalar_t__ eTCStateEnd ;
 int eTCStateMachineErrOK ;


 int free_type_code_str_struct (TYPE_1__*) ;
 int init_state_struct (TYPE_2__*,char*) ;
 int init_type_code_str_struct (TYPE_1__*) ;
 int run_state (TYPE_2__*,TYPE_1__*) ;
 char* strdup (char*) ;

__attribute__((used)) static EDemanglerErr get_type_code_string(char *sym, unsigned int *amount_of_read_chars, char **str_type_code) {
 EDemanglerErr err = eDemanglerErrOK;
 char *tmp_sym = strdup(sym);
 STypeCodeStr type_code_str;
 SStateInfo state;

 if (!init_type_code_str_struct(&type_code_str)) {
  err = eDemanglerErrMemoryAllocation;
  goto get_type_code_string_err;
 }

 init_state_struct (&state, tmp_sym);

 while (state.state != eTCStateEnd) {
  run_state (&state, &type_code_str);
  if (state.err != eTCStateMachineErrOK) {
   *str_type_code = ((void*)0);
   *amount_of_read_chars = 0;
   switch (state.err) {
   case 129:
    err = eDemanglerErrUncorrectMangledSymbol;
    break;
   case 128:
    err = eDemanglerErrUnsupportedMangling;
   default:
    break;
   }
   goto get_type_code_string_err;
  }
 }

 *str_type_code = strdup (type_code_str.type_str);
 *amount_of_read_chars = state.amount_of_read_chars;

get_type_code_string_err:
 R_FREE (tmp_sym);
 free_type_code_str_struct (&type_code_str);
 return err;
}
