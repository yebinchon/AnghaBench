
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int NtInitialize (int*,char***) ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ ruby_enabled (int ) ;
 int ruby_init () ;
 int ruby_init_loadpath () ;
 int ruby_init_stack (int ) ;
 int ruby_initialized ;
 int ruby_io_init () ;
 int ruby_process_options (int,char**) ;
 int ruby_script (char*) ;
 int ruby_stack_start ;
 int ruby_vim_init () ;

__attribute__((used)) static int ensure_ruby_initialized(void)
{
    if (!ruby_initialized)
    {
     {



  ruby_init();
     }
     ruby_init_loadpath();

     ruby_io_init();
     ruby_vim_init();
     ruby_initialized = 1;
    }
    return ruby_initialized;
}
