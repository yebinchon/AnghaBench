
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * json_hash; } ;
struct TYPE_10__ {int is_json; TYPE_2__ val; } ;
struct TYPE_9__ {int * json_hash; TYPE_1__* lex; } ;
struct TYPE_7__ {int lex_level; } ;
typedef TYPE_3__ PopulateRecordsetState ;
typedef TYPE_4__ JsObject ;


 int hash_destroy (int *) ;
 int populate_recordset_record (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void
populate_recordset_object_end(void *state)
{
 PopulateRecordsetState *_state = (PopulateRecordsetState *) state;
 JsObject obj;


 if (_state->lex->lex_level > 1)
  return;

 obj.is_json = 1;
 obj.val.json_hash = _state->json_hash;


 populate_recordset_record(_state, &obj);


 hash_destroy(_state->json_hash);
 _state->json_hash = ((void*)0);
}
