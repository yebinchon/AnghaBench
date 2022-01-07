
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ consttype; int constvalue; } ;
typedef double Selectivity ;
typedef int Pattern_Prefix_Status ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ Const ;


 scalar_t__ BYTEAOID ;
 int DatumGetTextPP (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int Pattern_Prefix_Exact ;
 int Pattern_Prefix_None ;
 int Pattern_Prefix_Partial ;
 char* TextDatumGetCString (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (char*) ;
 double regex_selectivity (char*,int ,int,int ) ;
 char* regexp_fixed_prefix (int ,int,scalar_t__,int*) ;
 TYPE_1__* string_to_const (char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static Pattern_Prefix_Status
regex_fixed_prefix(Const *patt_const, bool case_insensitive, Oid collation,
       Const **prefix_const, Selectivity *rest_selec)
{
 Oid typeid = patt_const->consttype;
 char *prefix;
 bool exact;






 if (typeid == BYTEAOID)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("regular-expression matching not supported on type bytea")));


 prefix = regexp_fixed_prefix(DatumGetTextPP(patt_const->constvalue),
         case_insensitive, collation,
         &exact);

 if (prefix == ((void*)0))
 {
  *prefix_const = ((void*)0);

  if (rest_selec != ((void*)0))
  {
   char *patt = TextDatumGetCString(patt_const->constvalue);

   *rest_selec = regex_selectivity(patt, strlen(patt),
           case_insensitive,
           0);
   pfree(patt);
  }

  return Pattern_Prefix_None;
 }

 *prefix_const = string_to_const(prefix, typeid);

 if (rest_selec != ((void*)0))
 {
  if (exact)
  {

   *rest_selec = 1.0;
  }
  else
  {
   char *patt = TextDatumGetCString(patt_const->constvalue);

   *rest_selec = regex_selectivity(patt, strlen(patt),
           case_insensitive,
           strlen(prefix));
   pfree(patt);
  }
 }

 pfree(prefix);

 if (exact)
  return Pattern_Prefix_Exact;
 else
  return Pattern_Prefix_Partial;
}
