
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* sqlerrmc; size_t sqlerrml; } ;
struct sqlca_t {TYPE_1__ sqlerrm; } ;


 struct sqlca_t* ECPGget_sqlca () ;
 char* ecpg_gettext (char*) ;
 int ecpg_log (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
sqlprint(void)
{
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_log("out of memory");
  return;
 }

 sqlca->sqlerrm.sqlerrmc[sqlca->sqlerrm.sqlerrml] = '\0';
 fprintf(stderr, ecpg_gettext("SQL error: %s\n"), sqlca->sqlerrm.sqlerrmc);
}
