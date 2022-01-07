
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int * array; } ;
typedef TYPE_1__ eary ;


 int PQescapeString (char*,int ,scalar_t__) ;
 scalar_t__ pg_malloc (int) ;
 char* pg_strdup (char*) ;
 int sprintf (int ,char*) ;
 scalar_t__ strlen (int ) ;

char *
get_comma_elts(eary *eary)
{
 char *ret,
      *ptr;
 int i,
    length = 0;

 if (eary->num == 0)
  return pg_strdup("");





 for (i = 0; i < eary->num; i++)
  length += strlen(eary->array[i]);

 ret = (char *) pg_malloc(length * 2 + 4 * eary->num);
 ptr = ret;

 for (i = 0; i < eary->num; i++)
 {
  if (i != 0)
   sprintf(ptr++, ",");
  sprintf(ptr++, "'");
  ptr += PQescapeString(ptr, eary->array[i], strlen(eary->array[i]));
  sprintf(ptr++, "'");
 }

 return ret;
}
