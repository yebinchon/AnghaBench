
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int dims ;
typedef int SV ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int ArrayBuildState ;
typedef int AV ;


 int CurrentMemoryContext ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int MAXDIM ;
 scalar_t__ SvRV (int *) ;
 int _sv_to_datum_finfo (int ,int *,int *) ;
 int array_to_datum_internal (int *,int *,int*,int*,int,int ,int ,int ,int *,int ) ;
 int av_len (int *) ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int get_element_type (int ) ;
 int * initArrayResult (int ,int ,int) ;
 int makeMdArrayResult (int *,int,int*,int*,int ,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static Datum
plperl_array_to_datum(SV *src, Oid typid, int32 typmod)
{
 dTHX;
 ArrayBuildState *astate;
 Oid elemtypid;
 FmgrInfo finfo;
 Oid typioparam;
 int dims[MAXDIM];
 int lbs[MAXDIM];
 int ndims = 1;
 int i;

 elemtypid = get_element_type(typid);
 if (!elemtypid)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("cannot convert Perl array to non-array type %s",
      format_type_be(typid))));

 astate = initArrayResult(elemtypid, CurrentMemoryContext, 1);

 _sv_to_datum_finfo(elemtypid, &finfo, &typioparam);

 memset(dims, 0, sizeof(dims));
 dims[0] = av_len((AV *) SvRV(src)) + 1;

 array_to_datum_internal((AV *) SvRV(src), astate,
       &ndims, dims, 1,
       typid, elemtypid, typmod,
       &finfo, typioparam);


 if (dims[0] <= 0)
  ndims = 0;

 for (i = 0; i < ndims; i++)
  lbs[i] = 1;

 return makeMdArrayResult(astate, ndims, dims, lbs,
        CurrentMemoryContext, 1);
}
