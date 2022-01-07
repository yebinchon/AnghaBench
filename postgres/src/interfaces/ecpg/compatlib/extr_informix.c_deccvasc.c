
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;
typedef int decimal ;


 int CDECIMALTYPE ;
 int CSTRINGTYPE ;
 int ECPG_INFORMIX_BAD_EXPONENT ;
 int ECPG_INFORMIX_BAD_NUMERIC ;
 int ECPG_INFORMIX_NUM_OVERFLOW ;
 int ECPG_INFORMIX_NUM_UNDERFLOW ;


 int PGTYPESnumeric_free (int *) ;
 int * PGTYPESnumeric_from_asc (char*,int *) ;
 int PGTYPESnumeric_to_decimal (int *,int *) ;
 char* ecpg_strndup (char const*,int) ;
 int errno ;
 int free (char*) ;
 scalar_t__ risnull (int ,char const*) ;
 int rsetnull (int ,char*) ;

int
deccvasc(const char *cp, int len, decimal *np)
{
 char *str;
 int ret = 0;
 numeric *result;

 rsetnull(CDECIMALTYPE, (char *) np);
 if (risnull(CSTRINGTYPE, cp))
  return 0;

 str = ecpg_strndup(cp, len);

 if (!str)
  ret = ECPG_INFORMIX_NUM_UNDERFLOW;
 else
 {
  errno = 0;
  result = PGTYPESnumeric_from_asc(str, ((void*)0));
  if (!result)
  {
   switch (errno)
   {
    case 128:
     ret = ECPG_INFORMIX_NUM_OVERFLOW;
     break;
    case 129:
     ret = ECPG_INFORMIX_BAD_NUMERIC;
     break;
    default:
     ret = ECPG_INFORMIX_BAD_EXPONENT;
     break;
   }
  }
  else
  {
   int i = PGTYPESnumeric_to_decimal(result, np);

   PGTYPESnumeric_free(result);
   if (i != 0)
    ret = ECPG_INFORMIX_NUM_OVERFLOW;
  }
 }

 free(str);
 return ret;
}
