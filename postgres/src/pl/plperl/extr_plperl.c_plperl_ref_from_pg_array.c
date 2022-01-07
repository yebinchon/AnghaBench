
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ndims; int* nelems; int nulls; int elements; int elem_is_rowtype; int proc; int transform_proc; } ;
typedef TYPE_2__ plperl_array_info ;
typedef int int16 ;
struct TYPE_8__ {TYPE_1__* prodesc; } ;
struct TYPE_6__ {int trftypes; int lang_oid; } ;
typedef int SV ;
typedef int Oid ;
typedef int HV ;
typedef int Datum ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 int ARR_ELEMTYPE (int *) ;
 int ARR_NDIM (int *) ;
 int * DatumGetArrayTypeP (int ) ;
 int IOFunc_output ;
 scalar_t__ OidIsValid (int ) ;
 TYPE_5__* current_call_data ;
 int dTHX ;
 int deconstruct_array (int *,int ,int ,int,char,int *,int *,int*) ;
 int fmgr_info (int ,int *) ;
 int get_transform_fromsql (int ,int ,int ) ;
 int get_type_io_data (int ,int ,int *,int*,char*,char*,int *,int *) ;
 int gv_stashpv (char*,int ) ;
 int hv_store (int *,char*,int,int *,int ) ;
 scalar_t__ newAV () ;
 int * newHV () ;
 int * newRV_noinc (int *) ;
 int * newSVuv (int ) ;
 int* palloc (int) ;
 TYPE_2__* palloc0 (int) ;
 int * split_array (TYPE_2__*,int ,int,int ) ;
 int * sv_bless (int *,int ) ;
 int type_is_rowtype (int ) ;

__attribute__((used)) static SV *
plperl_ref_from_pg_array(Datum arg, Oid typid)
{
 dTHX;
 ArrayType *ar = DatumGetArrayTypeP(arg);
 Oid elementtype = ARR_ELEMTYPE(ar);
 int16 typlen;
 bool typbyval;
 char typalign,
    typdelim;
 Oid typioparam;
 Oid typoutputfunc;
 Oid transform_funcid;
 int i,
    nitems,
      *dims;
 plperl_array_info *info;
 SV *av;
 HV *hv;





 info = palloc0(sizeof(plperl_array_info));


 get_type_io_data(elementtype, IOFunc_output,
      &typlen, &typbyval, &typalign,
      &typdelim, &typioparam, &typoutputfunc);


 transform_funcid = get_transform_fromsql(elementtype,
            current_call_data->prodesc->lang_oid,
            current_call_data->prodesc->trftypes);


 if (OidIsValid(transform_funcid))
  fmgr_info(transform_funcid, &info->transform_proc);
 else
  fmgr_info(typoutputfunc, &info->proc);

 info->elem_is_rowtype = type_is_rowtype(elementtype);


 info->ndims = ARR_NDIM(ar);
 dims = ARR_DIMS(ar);


 if (info->ndims == 0)
 {
  av = newRV_noinc((SV *) newAV());
 }
 else
 {
  deconstruct_array(ar, elementtype, typlen, typbyval,
        typalign, &info->elements, &info->nulls,
        &nitems);


  info->nelems = palloc(sizeof(int) * info->ndims);
  info->nelems[0] = nitems;
  for (i = 1; i < info->ndims; i++)
   info->nelems[i] = info->nelems[i - 1] / dims[i - 1];

  av = split_array(info, 0, nitems, 0);
 }

 hv = newHV();
 (void) hv_store(hv, "array", 5, av, 0);
 (void) hv_store(hv, "typeoid", 7, newSVuv(typid), 0);

 return sv_bless(newRV_noinc((SV *) hv),
     gv_stashpv("PostgreSQL::InServer::ARRAY", 0));
}
