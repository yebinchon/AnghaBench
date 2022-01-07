
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int dummy; } ;


 struct sqlca_t* ECPGget_sqlca () ;
 int memcpy (char*,char*,int) ;
 int sqlca_init ;

void
ECPG_informix_reset_sqlca(void)
{
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
  return;

 memcpy((char *) sqlca, (char *) &sqlca_init, sizeof(struct sqlca_t));
}
