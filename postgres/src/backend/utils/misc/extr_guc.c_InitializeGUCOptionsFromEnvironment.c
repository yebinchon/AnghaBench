
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long Min (long,int) ;
 int PGC_POSTMASTER ;
 int PGC_S_ENV_VAR ;
 long STACK_DEPTH_SLOP ;
 int SetConfigOption (char*,char*,int ,int ) ;
 long get_stack_depth_rlimit () ;
 char* getenv (char*) ;
 int sprintf (char*,char*,long) ;

__attribute__((used)) static void
InitializeGUCOptionsFromEnvironment(void)
{
 char *env;
 long stack_rlimit;

 env = getenv("PGPORT");
 if (env != ((void*)0))
  SetConfigOption("port", env, PGC_POSTMASTER, PGC_S_ENV_VAR);

 env = getenv("PGDATESTYLE");
 if (env != ((void*)0))
  SetConfigOption("datestyle", env, PGC_POSTMASTER, PGC_S_ENV_VAR);

 env = getenv("PGCLIENTENCODING");
 if (env != ((void*)0))
  SetConfigOption("client_encoding", env, PGC_POSTMASTER, PGC_S_ENV_VAR);






 stack_rlimit = get_stack_depth_rlimit();
 if (stack_rlimit > 0)
 {
  long new_limit = (stack_rlimit - STACK_DEPTH_SLOP) / 1024L;

  if (new_limit > 100)
  {
   char limbuf[16];

   new_limit = Min(new_limit, 2048);
   sprintf(limbuf, "%ld", new_limit);
   SetConfigOption("max_stack_depth", limbuf,
       PGC_POSTMASTER, PGC_S_ENV_VAR);
  }
 }
}
