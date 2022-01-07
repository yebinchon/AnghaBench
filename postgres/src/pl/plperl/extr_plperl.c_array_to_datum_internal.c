
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int SV ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int ArrayBuildState ;
typedef int AV ;


 int CurrentMemoryContext ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FALSE ;
 int MAXDIM ;
 scalar_t__ SvRV (int *) ;
 int accumArrayResult (int *,int ,int,int ,int ) ;
 int ** av_fetch (int *,int,int ) ;
 int av_len (int *) ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int * get_perl_array_ref (int *) ;
 int plperl_sv_to_datum (int *,int ,int ,int *,int *,int ,int*) ;

__attribute__((used)) static void
array_to_datum_internal(AV *av, ArrayBuildState *astate,
      int *ndims, int *dims, int cur_depth,
      Oid arraytypid, Oid elemtypid, int32 typmod,
      FmgrInfo *finfo, Oid typioparam)
{
 dTHX;
 int i;
 int len = av_len(av) + 1;

 for (i = 0; i < len; i++)
 {

  SV **svp = av_fetch(av, i, FALSE);


  SV *sav = svp ? get_perl_array_ref(*svp) : ((void*)0);


  if (sav)
  {
   AV *nav = (AV *) SvRV(sav);


   if (cur_depth + 1 > MAXDIM)
    ereport(ERROR,
      (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
       errmsg("number of array dimensions (%d) exceeds the maximum allowed (%d)",
        cur_depth + 1, MAXDIM)));


   if (i == 0 && *ndims == cur_depth)
   {
    dims[*ndims] = av_len(nav) + 1;
    (*ndims)++;
   }
   else if (av_len(nav) + 1 != dims[cur_depth])
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
       errmsg("multidimensional arrays must have array expressions with matching dimensions")));


   array_to_datum_internal(nav, astate,
         ndims, dims, cur_depth + 1,
         arraytypid, elemtypid, typmod,
         finfo, typioparam);
  }
  else
  {
   Datum dat;
   bool isnull;


   if (*ndims != cur_depth)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
       errmsg("multidimensional arrays must have array expressions with matching dimensions")));

   dat = plperl_sv_to_datum(svp ? *svp : ((void*)0),
          elemtypid,
          typmod,
          ((void*)0),
          finfo,
          typioparam,
          &isnull);

   (void) accumArrayResult(astate, dat, isnull,
         elemtypid, CurrentMemoryContext);
  }
 }
}
