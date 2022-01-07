
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ea_magic; int nelems; int ndims; int* dnulls; scalar_t__ flat_size; int typalign; int typlen; int * dvalues; int dims; scalar_t__ fvalue; } ;
typedef scalar_t__ Size ;
typedef int ExpandedObjectHeader ;
typedef TYPE_1__ ExpandedArrayHeader ;
typedef int Datum ;


 scalar_t__ ARR_OVERHEAD_NONULLS (int) ;
 scalar_t__ ARR_OVERHEAD_WITHNULLS (int,int) ;
 scalar_t__ ARR_SIZE (scalar_t__) ;
 int AllocSizeIsValid (scalar_t__) ;
 int ArrayGetNItems (int,int ) ;
 int Assert (int) ;
 scalar_t__ EA_MAGIC ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ MaxAllocSize ;
 scalar_t__ att_addlength_datum (scalar_t__,int ,int ) ;
 scalar_t__ att_align_nominal (scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;

__attribute__((used)) static Size
EA_get_flat_size(ExpandedObjectHeader *eohptr)
{
 ExpandedArrayHeader *eah = (ExpandedArrayHeader *) eohptr;
 int nelems;
 int ndims;
 Datum *dvalues;
 bool *dnulls;
 Size nbytes;
 int i;

 Assert(eah->ea_magic == EA_MAGIC);


 if (eah->fvalue)
  return ARR_SIZE(eah->fvalue);


 if (eah->flat_size)
  return eah->flat_size;






 nelems = eah->nelems;
 ndims = eah->ndims;
 Assert(nelems == ArrayGetNItems(ndims, eah->dims));
 dvalues = eah->dvalues;
 dnulls = eah->dnulls;
 nbytes = 0;
 for (i = 0; i < nelems; i++)
 {
  if (dnulls && dnulls[i])
   continue;
  nbytes = att_addlength_datum(nbytes, eah->typlen, dvalues[i]);
  nbytes = att_align_nominal(nbytes, eah->typalign);

  if (!AllocSizeIsValid(nbytes))
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("array size exceeds the maximum allowed (%d)",
       (int) MaxAllocSize)));
 }

 if (dnulls)
  nbytes += ARR_OVERHEAD_WITHNULLS(ndims, nelems);
 else
  nbytes += ARR_OVERHEAD_NONULLS(ndims);


 eah->flat_size = nbytes;

 return nbytes;
}
