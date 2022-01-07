
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errdetail (char*,...) ;
 int GetDatabaseEncodingName () ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ PrepareClientEncoding (int) ;
 int free (char*) ;
 void* malloc (int) ;
 char* pg_encoding_to_char (int) ;
 int pg_valid_client_encoding (char*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char const*) ;

bool
check_client_encoding(char **newval, void **extra, GucSource source)
{
 int encoding;
 const char *canonical_name;


 encoding = pg_valid_client_encoding(*newval);
 if (encoding < 0)
  return 0;


 canonical_name = pg_encoding_to_char(encoding);
 if (PrepareClientEncoding(encoding) < 0)
 {
  if (IsTransactionState())
  {

   GUC_check_errcode(ERRCODE_FEATURE_NOT_SUPPORTED);
   GUC_check_errdetail("Conversion between %s and %s is not supported.",
        canonical_name,
        GetDatabaseEncodingName());
  }
  else
  {

   GUC_check_errdetail("Cannot change \"client_encoding\" now.");
  }
  return 0;
 }
 if (strcmp(*newval, canonical_name) != 0 &&
  strcmp(*newval, "UNICODE") != 0)
 {
  free(*newval);
  *newval = strdup(canonical_name);
  if (!*newval)
   return 0;
 }




 *extra = malloc(sizeof(int));
 if (!*extra)
  return 0;
 *((int *) *extra) = encoding;

 return 1;
}
