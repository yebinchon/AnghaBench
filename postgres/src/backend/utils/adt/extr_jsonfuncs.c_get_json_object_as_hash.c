
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_9__ {int entrysize; int hcxt; int keysize; } ;
struct TYPE_8__ {char const* function_name; int * lex; int * hash; } ;
struct TYPE_7__ {int object_field_end; int object_field_start; int scalar; int array_start; void* semstate; } ;
typedef TYPE_1__ JsonSemAction ;
typedef int JsonLexContext ;
typedef int JsonHashEntry ;
typedef TYPE_2__ JHashState ;
typedef int HTAB ;
typedef TYPE_3__ HASHCTL ;


 int CurrentMemoryContext ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int NAMEDATALEN ;
 int hash_array_start ;
 int * hash_create (char*,int,TYPE_3__*,int) ;
 int hash_object_field_end ;
 int hash_object_field_start ;
 int hash_scalar ;
 int * makeJsonLexContextCstringLen (char*,int,int) ;
 int memset (TYPE_3__*,int ,int) ;
 void* palloc0 (int) ;
 int pg_parse_json (int *,TYPE_1__*) ;

__attribute__((used)) static HTAB *
get_json_object_as_hash(char *json, int len, const char *funcname)
{
 HASHCTL ctl;
 HTAB *tab;
 JHashState *state;
 JsonLexContext *lex = makeJsonLexContextCstringLen(json, len, 1);
 JsonSemAction *sem;

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = NAMEDATALEN;
 ctl.entrysize = sizeof(JsonHashEntry);
 ctl.hcxt = CurrentMemoryContext;
 tab = hash_create("json object hashtable",
       100,
       &ctl,
       HASH_ELEM | HASH_CONTEXT);

 state = palloc0(sizeof(JHashState));
 sem = palloc0(sizeof(JsonSemAction));

 state->function_name = funcname;
 state->hash = tab;
 state->lex = lex;

 sem->semstate = (void *) state;
 sem->array_start = hash_array_start;
 sem->scalar = hash_scalar;
 sem->object_field_start = hash_object_field_start;
 sem->object_field_end = hash_object_field_end;

 pg_parse_json(lex, sem);

 return tab;
}
