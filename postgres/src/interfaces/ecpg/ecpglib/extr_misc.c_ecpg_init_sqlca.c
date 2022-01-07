
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int dummy; } ;


 int memcpy (char*,char*,int) ;
 int sqlca_init ;

void
ecpg_init_sqlca(struct sqlca_t *sqlca)
{
 memcpy((char *) sqlca, (char *) &sqlca_init, sizeof(struct sqlca_t));
}
