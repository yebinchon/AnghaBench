
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_name; int database_name; } ;
typedef TYPE_1__ Port ;


 int Assert (int) ;
 int DEBUG3 ;
 int ExtraOptions ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int PostgresMain (int,char**,int ,int ) ;
 int TopMemoryContext ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,...) ;
 scalar_t__ getpid () ;
 int pg_split_opts (char**,int*,int ) ;
 int progname ;
 int strlen (int ) ;

__attribute__((used)) static void
BackendRun(Port *port)
{
 char **av;
 int maxac;
 int ac;
 int i;
 maxac = 2;
 maxac += (strlen(ExtraOptions) + 1) / 2;

 av = (char **) MemoryContextAlloc(TopMemoryContext,
           maxac * sizeof(char *));
 ac = 0;

 av[ac++] = "postgres";





 pg_split_opts(av, &ac, ExtraOptions);

 av[ac] = ((void*)0);

 Assert(ac < maxac);




 ereport(DEBUG3,
   (errmsg_internal("%s child[%d]: starting with (",
        progname, (int) getpid())));
 for (i = 0; i < ac; ++i)
  ereport(DEBUG3,
    (errmsg_internal("\t%s", av[i])));
 ereport(DEBUG3,
   (errmsg_internal(")")));





 MemoryContextSwitchTo(TopMemoryContext);

 PostgresMain(ac, av, port->database_name, port->user_name);
}
