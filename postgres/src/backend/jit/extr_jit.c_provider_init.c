
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* JitProviderInit ) (int *) ;


 int DEBUG1 ;
 int DLSUFFIX ;
 int MAXPGPATH ;
 int elog (int ,char*,...) ;
 int file_exists (char*) ;
 int jit_enabled ;
 char* jit_provider ;
 scalar_t__ load_external_function (char*,char*,int,int *) ;
 char* pkglib_path ;
 int provider ;
 int provider_failed_loading ;
 int provider_successfully_loaded ;
 int snprintf (char*,int,char*,char*,char*,int ) ;

__attribute__((used)) static bool
provider_init(void)
{
 char path[MAXPGPATH];
 JitProviderInit init;


 if (!jit_enabled)
  return 0;





 if (provider_failed_loading)
  return 0;
 if (provider_successfully_loaded)
  return 1;






 snprintf(path, MAXPGPATH, "%s/%s%s", pkglib_path, jit_provider, DLSUFFIX);
 elog(DEBUG1, "probing availability of JIT provider at %s", path);
 if (!file_exists(path))
 {
  elog(DEBUG1,
    "provider not available, disabling JIT for current session");
  provider_failed_loading = 1;
  return 0;
 }
 provider_failed_loading = 1;


 init = (JitProviderInit)
  load_external_function(path, "_PG_jit_provider_init", 1, ((void*)0));
 init(&provider);

 provider_successfully_loaded = 1;
 provider_failed_loading = 0;

 elog(DEBUG1, "successfully loaded JIT provider in current session");

 return 1;
}
