
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int guc_options; int * cmdline_options; } ;
typedef TYPE_1__ Port ;
typedef int ListCell ;
typedef int GucContext ;


 int Assert (int) ;
 int PGC_BACKEND ;
 int PGC_SU_BACKEND ;
 int PGC_S_CLIENT ;
 int SetConfigOption (char*,char*,int ,int ) ;
 char* lfirst (int *) ;
 int * list_head (int ) ;
 int * lnext (int ,int *) ;
 scalar_t__ palloc (int) ;
 int pg_split_opts (char**,int*,int *) ;
 int process_postgres_switches (int,char**,int ,int *) ;
 int strlen (int *) ;

__attribute__((used)) static void
process_startup_options(Port *port, bool am_superuser)
{
 GucContext gucctx;
 ListCell *gucopts;

 gucctx = am_superuser ? PGC_SU_BACKEND : PGC_BACKEND;





 if (port->cmdline_options != ((void*)0))
 {





  char **av;
  int maxac;
  int ac;

  maxac = 2 + (strlen(port->cmdline_options) + 1) / 2;

  av = (char **) palloc(maxac * sizeof(char *));
  ac = 0;

  av[ac++] = "postgres";

  pg_split_opts(av, &ac, port->cmdline_options);

  av[ac] = ((void*)0);

  Assert(ac < maxac);

  (void) process_postgres_switches(ac, av, gucctx, ((void*)0));
 }





 gucopts = list_head(port->guc_options);
 while (gucopts)
 {
  char *name;
  char *value;

  name = lfirst(gucopts);
  gucopts = lnext(port->guc_options, gucopts);

  value = lfirst(gucopts);
  gucopts = lnext(port->guc_options, gucopts);

  SetConfigOption(name, value, gucctx, PGC_S_CLIENT);
 }
}
