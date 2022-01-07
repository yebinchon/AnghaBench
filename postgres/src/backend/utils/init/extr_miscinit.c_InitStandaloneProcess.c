
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int FATAL ;
 int InitLatch (int *) ;
 int InitProcessGlobals () ;
 int InitializeLatchSupport () ;
 int IsPostmasterEnvironment ;
 int LocalLatchData ;
 int * MyLatch ;
 int elog (int ,char*,char const*) ;
 scalar_t__ find_my_exec (char const*,char*) ;
 int get_pkglib_path (char*,char*) ;
 char* my_exec_path ;
 char* pkglib_path ;

void
InitStandaloneProcess(const char *argv0)
{
 Assert(!IsPostmasterEnvironment);

 InitProcessGlobals();


 InitializeLatchSupport();
 MyLatch = &LocalLatchData;
 InitLatch(MyLatch);


 if (my_exec_path[0] == '\0')
 {
  if (find_my_exec(argv0, my_exec_path) < 0)
   elog(FATAL, "%s: could not locate my own executable path",
     argv0);
 }

 if (pkglib_path[0] == '\0')
  get_pkglib_path(my_exec_path, pkglib_path);
}
