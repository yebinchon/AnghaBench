
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_8__ {int entrysize; int hcxt; int keysize; } ;
struct TYPE_7__ {int json_hash; int function_name; TYPE_1__* lex; } ;
struct TYPE_6__ {int lex_level; } ;
typedef TYPE_2__ PopulateRecordsetState ;
typedef int JsonHashEntry ;
typedef TYPE_3__ HASHCTL ;


 int CurrentMemoryContext ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int NAMEDATALEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int hash_create (char*,int,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
populate_recordset_object_start(void *state)
{
 PopulateRecordsetState *_state = (PopulateRecordsetState *) state;
 int lex_level = _state->lex->lex_level;
 HASHCTL ctl;


 if (lex_level == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("cannot call %s on an object",
      _state->function_name)));


 if (lex_level > 1)
  return;


 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = NAMEDATALEN;
 ctl.entrysize = sizeof(JsonHashEntry);
 ctl.hcxt = CurrentMemoryContext;
 _state->json_hash = hash_create("json object hashtable",
         100,
         &ctl,
         HASH_ELEM | HASH_CONTEXT);
}
