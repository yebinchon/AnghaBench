
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef TYPE_2__* pg_locale_t ;
typedef int int32_t ;
typedef scalar_t__ UChar ;
struct TYPE_7__ {int lt; } ;
struct TYPE_8__ {scalar_t__ provider; TYPE_1__ info; } ;
typedef scalar_t__ Oid ;


 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERRCODE_INDETERMINATE_COLLATION ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int INT_MAX ;
 int OidIsValid (scalar_t__) ;
 char* asc_toupper (char const*,size_t) ;
 int char2wchar (scalar_t__*,size_t,char const*,size_t,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int icu_convert_case (int ,TYPE_2__*,scalar_t__**,scalar_t__*,int ) ;
 int icu_from_uchar (char**,scalar_t__*,int ) ;
 int icu_to_uchar (scalar_t__**,char const*,size_t) ;
 scalar_t__ lc_ctype_is_c (scalar_t__) ;
 char* palloc (size_t) ;
 int pfree (scalar_t__*) ;
 size_t pg_database_encoding_max_length () ;
 TYPE_2__* pg_newlocale_from_collation (scalar_t__) ;
 char pg_toupper (unsigned char) ;
 char* pnstrdup (char const*,size_t) ;
 char toupper_l (unsigned char,int ) ;
 scalar_t__ towupper (scalar_t__) ;
 scalar_t__ towupper_l (scalar_t__,int ) ;
 int u_strToUpper ;
 int wchar2char (char*,scalar_t__*,size_t,TYPE_2__*) ;

char *
str_toupper(const char *buff, size_t nbytes, Oid collid)
{
 char *result;

 if (!buff)
  return ((void*)0);


 if (lc_ctype_is_c(collid))
 {
  result = asc_toupper(buff, nbytes);
 }
 else
 {
  pg_locale_t mylocale = 0;

  if (collid != DEFAULT_COLLATION_OID)
  {
   if (!OidIsValid(collid))
   {




    ereport(ERROR,
      (errcode(ERRCODE_INDETERMINATE_COLLATION),
       errmsg("could not determine which collation to use for %s function",
        "upper()"),
       errhint("Use the COLLATE clause to set the collation explicitly.")));
   }
   mylocale = pg_newlocale_from_collation(collid);
  }
  {
   if (pg_database_encoding_max_length() > 1)
   {
    wchar_t *workspace;
    size_t curr_char;
    size_t result_size;


    if ((nbytes + 1) > (INT_MAX / sizeof(wchar_t)))
     ereport(ERROR,
       (errcode(ERRCODE_OUT_OF_MEMORY),
        errmsg("out of memory")));


    workspace = (wchar_t *) palloc((nbytes + 1) * sizeof(wchar_t));

    char2wchar(workspace, nbytes + 1, buff, nbytes, mylocale);

    for (curr_char = 0; workspace[curr_char] != 0; curr_char++)
    {





      workspace[curr_char] = towupper(workspace[curr_char]);
    }





    result_size = curr_char * pg_database_encoding_max_length() + 1;
    result = palloc(result_size);

    wchar2char(result, workspace, result_size, mylocale);
    pfree(workspace);
   }
   else
   {
    char *p;

    result = pnstrdup(buff, nbytes);
    for (p = result; *p; p++)
    {





      *p = pg_toupper((unsigned char) *p);
    }
   }
  }
 }

 return result;
}
