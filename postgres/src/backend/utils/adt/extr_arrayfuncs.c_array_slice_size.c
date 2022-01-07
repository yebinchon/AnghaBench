
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;


 int ArrayGetNItems (int,int*) ;
 int ArrayGetOffset (int,int*,int*,int*) ;
 int MAXDIM ;
 int array_get_isnull (int *,int) ;
 char* array_seek (char*,int,int *,int,int,int,char) ;
 int att_addlength_pointer (int ,int,char*) ;
 int att_align_nominal (int,char) ;
 int mda_get_offset_values (int,int*,int*,int*) ;
 int mda_get_prod (int,int*,int*) ;
 int mda_get_range (int,int*,int*,int*) ;
 int mda_next_tuple (int,int*,int*) ;

__attribute__((used)) static int
array_slice_size(char *arraydataptr, bits8 *arraynullsptr,
     int ndim, int *dim, int *lb,
     int *st, int *endp,
     int typlen, bool typbyval, char typalign)
{
 int src_offset,
    span[MAXDIM],
    prod[MAXDIM],
    dist[MAXDIM],
    indx[MAXDIM];
 char *ptr;
 int i,
    j,
    inc;
 int count = 0;

 mda_get_range(ndim, span, st, endp);


 if (typlen > 0 && !arraynullsptr)
  return ArrayGetNItems(ndim, span) * att_align_nominal(typlen, typalign);


 src_offset = ArrayGetOffset(ndim, dim, lb, st);
 ptr = array_seek(arraydataptr, 0, arraynullsptr, src_offset,
      typlen, typbyval, typalign);
 mda_get_prod(ndim, dim, prod);
 mda_get_offset_values(ndim, dist, prod, span);
 for (i = 0; i < ndim; i++)
  indx[i] = 0;
 j = ndim - 1;
 do
 {
  if (dist[j])
  {
   ptr = array_seek(ptr, src_offset, arraynullsptr, dist[j],
        typlen, typbyval, typalign);
   src_offset += dist[j];
  }
  if (!array_get_isnull(arraynullsptr, src_offset))
  {
   inc = att_addlength_pointer(0, typlen, ptr);
   inc = att_align_nominal(inc, typalign);
   ptr += inc;
   count += inc;
  }
  src_offset++;
 } while ((j = mda_next_tuple(ndim, indx, span)) != -1);
 return count;
}
