
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sem ;
struct TYPE_9__ {int scalar; int array_element_end; int array_element_start; int array_end; int object_start; void* semstate; } ;
struct TYPE_8__ {scalar_t__ ndims; scalar_t__ dims; } ;
struct TYPE_7__ {int lex; TYPE_2__* ctx; } ;
typedef TYPE_1__ PopulateArrayState ;
typedef TYPE_2__ PopulateArrayContext ;
typedef TYPE_3__ JsonSemAction ;


 int Assert (int) ;
 int makeJsonLexContextCstringLen (char*,int,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int pfree (int ) ;
 int pg_parse_json (int ,TYPE_3__*) ;
 int populate_array_array_end ;
 int populate_array_element_end ;
 int populate_array_element_start ;
 int populate_array_object_start ;
 int populate_array_scalar ;

__attribute__((used)) static void
populate_array_json(PopulateArrayContext *ctx, char *json, int len)
{
 PopulateArrayState state;
 JsonSemAction sem;

 state.lex = makeJsonLexContextCstringLen(json, len, 1);
 state.ctx = ctx;

 memset(&sem, 0, sizeof(sem));
 sem.semstate = (void *) &state;
 sem.object_start = populate_array_object_start;
 sem.array_end = populate_array_array_end;
 sem.array_element_start = populate_array_element_start;
 sem.array_element_end = populate_array_element_end;
 sem.scalar = populate_array_scalar;

 pg_parse_json(state.lex, &sem);


 Assert(ctx->ndims > 0 && ctx->dims);

 pfree(state.lex);
}
