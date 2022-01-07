
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pg_locale_t ;
typedef int bytea ;
struct TYPE_6__ {scalar_t__ consttype; int constvalue; } ;
typedef int Selectivity ;
typedef scalar_t__ Pointer ;
typedef int Pattern_Prefix_Status ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ Const ;


 int Assert (int) ;
 scalar_t__ BYTEAOID ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int * DatumGetByteaPP (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INDETERMINATE_COLLATION ;
 int ERROR ;
 int OidIsValid (scalar_t__) ;
 int Pattern_Prefix_Exact ;
 int Pattern_Prefix_None ;
 int Pattern_Prefix_Partial ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ lc_ctype_is_c (scalar_t__) ;
 int like_selectivity (char*,int,int) ;
 int memcpy (char*,int ,int) ;
 char* palloc (int) ;
 scalar_t__ pattern_char_isalpha (char,int,int ,int) ;
 int pfree (char*) ;
 int pg_database_encoding_max_length () ;
 int pg_newlocale_from_collation (scalar_t__) ;
 TYPE_1__* string_to_bytea_const (char*,int) ;
 TYPE_1__* string_to_const (char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static Pattern_Prefix_Status
like_fixed_prefix(Const *patt_const, bool case_insensitive, Oid collation,
      Const **prefix_const, Selectivity *rest_selec)
{
 char *match;
 char *patt;
 int pattlen;
 Oid typeid = patt_const->consttype;
 int pos,
    match_pos;
 bool is_multibyte = (pg_database_encoding_max_length() > 1);
 pg_locale_t locale = 0;
 bool locale_is_c = 0;


 Assert(typeid == BYTEAOID || typeid == TEXTOID);

 if (case_insensitive)
 {
  if (typeid == BYTEAOID)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("case insensitive matching not supported on type bytea")));


  if (lc_ctype_is_c(collation))
   locale_is_c = 1;
  else if (collation != DEFAULT_COLLATION_OID)
  {
   if (!OidIsValid(collation))
   {




    ereport(ERROR,
      (errcode(ERRCODE_INDETERMINATE_COLLATION),
       errmsg("could not determine which collation to use for ILIKE"),
       errhint("Use the COLLATE clause to set the collation explicitly.")));
   }
   locale = pg_newlocale_from_collation(collation);
  }
 }

 if (typeid != BYTEAOID)
 {
  patt = TextDatumGetCString(patt_const->constvalue);
  pattlen = strlen(patt);
 }
 else
 {
  bytea *bstr = DatumGetByteaPP(patt_const->constvalue);

  pattlen = VARSIZE_ANY_EXHDR(bstr);
  patt = (char *) palloc(pattlen);
  memcpy(patt, VARDATA_ANY(bstr), pattlen);
  Assert((Pointer) bstr == DatumGetPointer(patt_const->constvalue));
 }

 match = palloc(pattlen + 1);
 match_pos = 0;
 for (pos = 0; pos < pattlen; pos++)
 {

  if (patt[pos] == '%' ||
   patt[pos] == '_')
   break;


  if (patt[pos] == '\\')
  {
   pos++;
   if (pos >= pattlen)
    break;
  }


  if (case_insensitive &&
   pattern_char_isalpha(patt[pos], is_multibyte, locale, locale_is_c))
   break;

  match[match_pos++] = patt[pos];
 }

 match[match_pos] = '\0';

 if (typeid != BYTEAOID)
  *prefix_const = string_to_const(match, typeid);
 else
  *prefix_const = string_to_bytea_const(match, match_pos);

 if (rest_selec != ((void*)0))
  *rest_selec = like_selectivity(&patt[pos], pattlen - pos,
            case_insensitive);

 pfree(patt);
 pfree(match);


 if (pos == pattlen)
  return Pattern_Prefix_Exact;

 if (match_pos > 0)
  return Pattern_Prefix_Partial;

 return Pattern_Prefix_None;
}
