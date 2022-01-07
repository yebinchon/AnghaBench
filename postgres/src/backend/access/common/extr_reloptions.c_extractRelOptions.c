
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bytea ;
typedef int amoptions_function ;
typedef int TupleDesc ;
struct TYPE_2__ {int relkind; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef int Datum ;


 int Anum_pg_class_reloptions ;
 int Assert (int) ;
 scalar_t__ GETSTRUCT (int ) ;
 int fastgetattr (int ,int ,int ,int*) ;
 int * heap_reloptions (int,int ,int) ;
 int * index_reloptions (int ,int ,int) ;
 int * partitioned_table_reloptions (int ,int) ;
 int * view_reloptions (int ,int) ;

bytea *
extractRelOptions(HeapTuple tuple, TupleDesc tupdesc,
      amoptions_function amoptions)
{
 bytea *options;
 bool isnull;
 Datum datum;
 Form_pg_class classForm;

 datum = fastgetattr(tuple,
      Anum_pg_class_reloptions,
      tupdesc,
      &isnull);
 if (isnull)
  return ((void*)0);

 classForm = (Form_pg_class) GETSTRUCT(tuple);


 switch (classForm->relkind)
 {
  case 130:
  case 129:
  case 133:
   options = heap_reloptions(classForm->relkind, datum, 0);
   break;
  case 131:
   options = partitioned_table_reloptions(datum, 0);
   break;
  case 128:
   options = view_reloptions(datum, 0);
   break;
  case 134:
  case 132:
   options = index_reloptions(amoptions, datum, 0);
   break;
  case 135:
   options = ((void*)0);
   break;
  default:
   Assert(0);
   options = ((void*)0);
   break;
 }

 return options;
}
