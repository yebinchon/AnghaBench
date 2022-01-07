
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ element_type; int typalign; scalar_t__ typbyval; int typlen; } ;
struct TYPE_6__ {scalar_t__ ea_magic; scalar_t__ element_type; char* fendptr; int hdr; int fstartptr; int * fvalue; scalar_t__ flat_size; scalar_t__ nelems; scalar_t__ dvalueslen; int * dnulls; int * dvalues; int typalign; scalar_t__ typbyval; int typlen; int lbound; int dims; int ndims; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ExpandedArrayHeader ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_2__ ArrayMetaState ;


 int ALLOCSET_START_SMALL_SIZES ;
 int ARR_DATA_PTR (int *) ;
 int ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 int ARR_LBOUND (int *) ;
 int ARR_NDIM (int *) ;
 int ARR_SIZE (int *) ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int * DatumGetArrayTypePCopy (int ) ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ EA_MAGIC ;
 int EA_methods ;
 int EOHPGetRWDatum (int *) ;
 int EOH_init_header (int *,int *,int ) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 int copy_byval_expanded_array (TYPE_1__*,TYPE_1__*) ;
 int get_typlenbyvalalign (scalar_t__,int *,scalar_t__*,int *) ;

Datum
expand_array(Datum arraydatum, MemoryContext parentcontext,
    ArrayMetaState *metacache)
{
 ArrayType *array;
 ExpandedArrayHeader *eah;
 MemoryContext objcxt;
 MemoryContext oldcxt;
 ArrayMetaState fakecache;






 objcxt = AllocSetContextCreate(parentcontext,
           "expanded array",
           ALLOCSET_START_SMALL_SIZES);


 eah = (ExpandedArrayHeader *)
  MemoryContextAlloc(objcxt, sizeof(ExpandedArrayHeader));

 EOH_init_header(&eah->hdr, &EA_methods, objcxt);
 eah->ea_magic = EA_MAGIC;


 if (VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(arraydatum)))
 {
  ExpandedArrayHeader *oldeah = (ExpandedArrayHeader *) DatumGetEOHP(arraydatum);

  Assert(oldeah->ea_magic == EA_MAGIC);
  if (metacache == ((void*)0))
   metacache = &fakecache;
  metacache->element_type = oldeah->element_type;
  metacache->typlen = oldeah->typlen;
  metacache->typbyval = oldeah->typbyval;
  metacache->typalign = oldeah->typalign;







  if (oldeah->typbyval && oldeah->dvalues != ((void*)0))
  {
   copy_byval_expanded_array(eah, oldeah);

   return EOHPGetRWDatum(&eah->hdr);
  }
 }
 oldcxt = MemoryContextSwitchTo(objcxt);
 array = DatumGetArrayTypePCopy(arraydatum);
 MemoryContextSwitchTo(oldcxt);

 eah->ndims = ARR_NDIM(array);

 eah->dims = ARR_DIMS(array);
 eah->lbound = ARR_LBOUND(array);


 eah->element_type = ARR_ELEMTYPE(array);
 if (metacache && metacache->element_type == eah->element_type)
 {

  eah->typlen = metacache->typlen;
  eah->typbyval = metacache->typbyval;
  eah->typalign = metacache->typalign;
 }
 else
 {

  get_typlenbyvalalign(eah->element_type,
        &eah->typlen,
        &eah->typbyval,
        &eah->typalign);

  if (metacache)
  {
   metacache->element_type = eah->element_type;
   metacache->typlen = eah->typlen;
   metacache->typbyval = eah->typbyval;
   metacache->typalign = eah->typalign;
  }
 }


 eah->dvalues = ((void*)0);
 eah->dnulls = ((void*)0);
 eah->dvalueslen = 0;
 eah->nelems = 0;
 eah->flat_size = 0;


 eah->fvalue = array;
 eah->fstartptr = ARR_DATA_PTR(array);
 eah->fendptr = ((char *) array) + ARR_SIZE(array);


 return EOHPGetRWDatum(&eah->hdr);
}
