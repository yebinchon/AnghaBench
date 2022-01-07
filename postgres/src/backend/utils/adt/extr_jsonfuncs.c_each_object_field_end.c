
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_4__ {int next_scalar; char* normalized_scalar; int result_start; int tmp_cxt; int tuple_store; int ret_tdesc; TYPE_1__* lex; scalar_t__ normalize_results; } ;
struct TYPE_3__ {int lex_level; int prev_token_terminator; } ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_2__ EachState ;
typedef scalar_t__ Datum ;


 scalar_t__ CStringGetTextDatum (char*) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PointerGetDatum (int *) ;
 int * cstring_to_text_with_len (int,int) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 int tuplestore_puttuple (int ,int ) ;

__attribute__((used)) static void
each_object_field_end(void *state, char *fname, bool isnull)
{
 EachState *_state = (EachState *) state;
 MemoryContext old_cxt;
 int len;
 text *val;
 HeapTuple tuple;
 Datum values[2];
 bool nulls[2] = {0, 0};


 if (_state->lex->lex_level != 1)
  return;


 old_cxt = MemoryContextSwitchTo(_state->tmp_cxt);

 values[0] = CStringGetTextDatum(fname);

 if (isnull && _state->normalize_results)
 {
  nulls[1] = 1;
  values[1] = (Datum) 0;
 }
 else if (_state->next_scalar)
 {
  values[1] = CStringGetTextDatum(_state->normalized_scalar);
  _state->next_scalar = 0;
 }
 else
 {
  len = _state->lex->prev_token_terminator - _state->result_start;
  val = cstring_to_text_with_len(_state->result_start, len);
  values[1] = PointerGetDatum(val);
 }

 tuple = heap_form_tuple(_state->ret_tdesc, values, nulls);

 tuplestore_puttuple(_state->tuple_store, tuple);


 MemoryContextSwitchTo(old_cxt);
 MemoryContextReset(_state->tmp_cxt);
}
