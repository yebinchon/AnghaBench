
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int relopt_value ;
typedef int relopt_parse_elt ;
typedef int relopt_kind ;
typedef int Size ;
typedef int Datum ;


 int Assert (int) ;
 void* allocateReloptStruct (int ,int *,int) ;
 int fillRelOptions (void*,int ,int *,int,int,int const*,int) ;
 int * parseRelOptions (int ,int,int ,int*) ;
 int pfree (int *) ;

void *
build_reloptions(Datum reloptions, bool validate,
     relopt_kind kind,
     Size relopt_struct_size,
     const relopt_parse_elt *relopt_elems,
     int num_relopt_elems)
{
 int numoptions;
 relopt_value *options;
 void *rdopts;


 options = parseRelOptions(reloptions, validate, kind, &numoptions);
 Assert(numoptions <= num_relopt_elems);


 if (numoptions == 0)
 {
  Assert(options == ((void*)0));
  return ((void*)0);
 }


 rdopts = allocateReloptStruct(relopt_struct_size, options, numoptions);
 fillRelOptions(rdopts, relopt_struct_size, options, numoptions,
       validate, relopt_elems, num_relopt_elems);

 pfree(options);

 return rdopts;
}
