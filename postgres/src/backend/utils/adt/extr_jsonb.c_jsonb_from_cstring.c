
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int state ;
typedef int sem ;
struct TYPE_5__ {int res; int object_field_start; int scalar; int array_end; int object_end; int array_start; int object_start; void* semstate; } ;
typedef TYPE_1__ JsonbInState ;
typedef TYPE_1__ JsonSemAction ;
typedef int JsonLexContext ;
typedef int Datum ;


 int JsonbValueToJsonb (int ) ;
 int PG_RETURN_POINTER (int ) ;
 int jsonb_in_array_end ;
 int jsonb_in_array_start ;
 int jsonb_in_object_end ;
 int jsonb_in_object_field_start ;
 int jsonb_in_object_start ;
 int jsonb_in_scalar ;
 int * makeJsonLexContextCstringLen (char*,int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int pg_parse_json (int *,TYPE_1__*) ;

__attribute__((used)) static inline Datum
jsonb_from_cstring(char *json, int len)
{
 JsonLexContext *lex;
 JsonbInState state;
 JsonSemAction sem;

 memset(&state, 0, sizeof(state));
 memset(&sem, 0, sizeof(sem));
 lex = makeJsonLexContextCstringLen(json, len, 1);

 sem.semstate = (void *) &state;

 sem.object_start = jsonb_in_object_start;
 sem.array_start = jsonb_in_array_start;
 sem.object_end = jsonb_in_object_end;
 sem.array_end = jsonb_in_array_end;
 sem.scalar = jsonb_in_scalar;
 sem.object_field_start = jsonb_in_object_field_start;

 pg_parse_json(lex, &sem);


 PG_RETURN_POINTER(JsonbValueToJsonb(state.res));
}
