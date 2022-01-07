
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int text; } ;
struct TYPE_7__ {int filename; TYPE_1__ subst; int ident; } ;
typedef TYPE_2__ pp_entry_t ;
struct TYPE_8__ {scalar_t__ pedantic; } ;


 int free (int ) ;
 int free_pp_entry (TYPE_2__*,int) ;
 TYPE_4__ pp_status ;
 int pphash (char const*) ;
 TYPE_2__* pplookup (char const*) ;
 int ppy_warning (char*,char const*) ;

void pp_del_define(const char *name)
{
 pp_entry_t *ppp;
 int idx = pphash(name);

 if((ppp = pplookup(name)) == ((void*)0))
 {
  if(pp_status.pedantic)
   ppy_warning("%s was not defined", name);
  return;
 }

 free( ppp->ident );
 free( ppp->subst.text );
 free( ppp->filename );
 free_pp_entry( ppp, idx );
}
