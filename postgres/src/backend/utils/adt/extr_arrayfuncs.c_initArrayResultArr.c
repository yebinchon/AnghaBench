
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_cxt; void* element_type; void* array_type; int mcontext; } ;
typedef void* Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ ArrayBuildStateArr ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int OidIsValid (void*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (void*) ;
 void* get_element_type (void*) ;

ArrayBuildStateArr *
initArrayResultArr(Oid array_type, Oid element_type, MemoryContext rcontext,
       bool subcontext)
{
 ArrayBuildStateArr *astate;
 MemoryContext arr_context = rcontext;


 if (!OidIsValid(element_type))
 {
  element_type = get_element_type(array_type);

  if (!OidIsValid(element_type))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("data type %s is not an array type",
       format_type_be(array_type))));
 }


 if (subcontext)
  arr_context = AllocSetContextCreate(rcontext,
           "accumArrayResultArr",
           ALLOCSET_DEFAULT_SIZES);


 astate = (ArrayBuildStateArr *)
  MemoryContextAllocZero(arr_context, sizeof(ArrayBuildStateArr));
 astate->mcontext = arr_context;
 astate->private_cxt = subcontext;


 astate->array_type = array_type;
 astate->element_type = element_type;

 return astate;
}
