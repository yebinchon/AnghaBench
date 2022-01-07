
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bmstr ;
 int cfgdir ;
 int disabledbg () ;
 int free (int ) ;
 int g_pipepath ;
 int g_selpath ;
 int initpath ;
 int plugindir ;
 int pluginstr ;
 int sessiondir ;
 int unlink (int ) ;

__attribute__((used)) static void cleanup(void)
{
 free(g_selpath);
 free(plugindir);
 free(sessiondir);
 free(cfgdir);
 free(initpath);
 free(bmstr);
 free(pluginstr);

 unlink(g_pipepath);




}
