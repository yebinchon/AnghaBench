
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numAttributes; TYPE_1__* attDescs; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ PGresult ;


 int free (char*) ;
 char pg_tolower (unsigned char) ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strdup (char const*) ;

int
PQfnumber(const PGresult *res, const char *field_name)
{
 char *field_case;
 bool in_quotes;
 bool all_lower = 1;
 const char *iptr;
 char *optr;
 int i;

 if (!res)
  return -1;





 if (field_name == ((void*)0) ||
  field_name[0] == '\0' ||
  res->attDescs == ((void*)0))
  return -1;





 for (iptr = field_name; *iptr; iptr++)
 {
  char c = *iptr;

  if (c == '"' || c != pg_tolower((unsigned char) c))
  {
   all_lower = 0;
   break;
  }
 }

 if (all_lower)
  for (i = 0; i < res->numAttributes; i++)
   if (strcmp(field_name, res->attDescs[i].name) == 0)
    return i;
 field_case = strdup(field_name);
 if (field_case == ((void*)0))
  return -1;

 in_quotes = 0;
 optr = field_case;
 for (iptr = field_case; *iptr; iptr++)
 {
  char c = *iptr;

  if (in_quotes)
  {
   if (c == '"')
   {
    if (iptr[1] == '"')
    {

     *optr++ = '"';
     iptr++;
    }
    else
     in_quotes = 0;
   }
   else
    *optr++ = c;
  }
  else if (c == '"')
   in_quotes = 1;
  else
  {
   c = pg_tolower((unsigned char) c);
   *optr++ = c;
  }
 }
 *optr = '\0';

 for (i = 0; i < res->numAttributes; i++)
 {
  if (strcmp(field_case, res->attDescs[i].name) == 0)
  {
   free(field_case);
   return i;
  }
 }
 free(field_case);
 return -1;
}
