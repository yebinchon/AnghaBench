
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bytea ;
typedef int * amoptions_function ;
struct TYPE_7__ {int * rd_options; TYPE_2__* rd_indam; TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int * amoptions; } ;
struct TYPE_5__ {int relkind; } ;
typedef TYPE_3__* Relation ;
typedef int HeapTuple ;


 int CacheMemoryContext ;
 int GetPgClassDescriptor () ;
 int * MemoryContextAlloc (int ,int ) ;







 int VARSIZE (int *) ;
 int * extractRelOptions (int ,int ,int *) ;
 int memcpy (int *,int *,int ) ;
 int pfree (int *) ;

__attribute__((used)) static void
RelationParseRelOptions(Relation relation, HeapTuple tuple)
{
 bytea *options;
 amoptions_function amoptsfn;

 relation->rd_options = ((void*)0);





 switch (relation->rd_rel->relkind)
 {
  case 130:
  case 129:
  case 128:
  case 133:
  case 131:
   amoptsfn = ((void*)0);
   break;
  case 134:
  case 132:
   amoptsfn = relation->rd_indam->amoptions;
   break;
  default:
   return;
 }






 options = extractRelOptions(tuple, GetPgClassDescriptor(), amoptsfn);







 if (options)
 {
  relation->rd_options = MemoryContextAlloc(CacheMemoryContext,
              VARSIZE(options));
  memcpy(relation->rd_options, options, VARSIZE(options));
  pfree(options);
 }
}
