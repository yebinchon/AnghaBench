
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** _NSGetArgv () ;
 char** environ ;
 int exit (int) ;
 int last_status_len ;
 scalar_t__ malloc (int) ;
 char* ps_buffer ;
 int ps_buffer_size ;
 int save_argc ;
 char** save_argv ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int write_stderr (char*) ;

char **
save_ps_display_args(int argc, char **argv)
{
 save_argc = argc;
 save_argv = argv;
 return argv;
}
