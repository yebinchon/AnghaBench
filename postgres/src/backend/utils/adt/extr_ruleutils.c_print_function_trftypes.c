
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;


 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int format_type_be (int ) ;
 int get_func_trftypes (int ,int **) ;

__attribute__((used)) static void
print_function_trftypes(StringInfo buf, HeapTuple proctup)
{
 Oid *trftypes;
 int ntypes;

 ntypes = get_func_trftypes(proctup, &trftypes);
 if (ntypes > 0)
 {
  int i;

  appendStringInfoString(buf, "\n TRANSFORM ");
  for (i = 0; i < ntypes; i++)
  {
   if (i != 0)
    appendStringInfoString(buf, ", ");
   appendStringInfo(buf, "FOR TYPE %s", format_type_be(trftypes[i]));
  }
 }
}
