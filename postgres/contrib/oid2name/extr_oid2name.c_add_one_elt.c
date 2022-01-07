
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; char** array; int num; } ;
typedef TYPE_1__ eary ;


 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (char**,int) ;
 char* pg_strdup (char*) ;

void
add_one_elt(char *eltname, eary *eary)
{
 if (eary->alloc == 0)
 {
  eary ->alloc = 8;
  eary ->array = (char **) pg_malloc(8 * sizeof(char *));
 }
 else if (eary->num >= eary->alloc)
 {
  eary ->alloc *= 2;
  eary ->array = (char **) pg_realloc(eary->array,
             eary->alloc * sizeof(char *));
 }

 eary ->array[eary->num] = pg_strdup(eltname);
 eary ->num++;
}
