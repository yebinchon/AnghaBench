
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** _NSGetArgv () ;
 char** environ ;
 int free (char**) ;
 char** frozen_environ ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 char** new_environ ;
 char* ps_buffer ;
 int ps_buffer_size ;
 int save_argc ;
 char** save_argv ;
 void* strdup (char*) ;
 int strlen (char*) ;

char** save_ps_args(int argc, char** argv)
{
    save_argc = argc;
    save_argv = argv;
    return argv;
}
