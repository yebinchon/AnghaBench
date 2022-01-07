
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;


 int MP_ARRAY_SIZE (char**) ;
 char** MP_STATE_PORT (int ) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 char* getenv (char*) ;
 int open (int ,int,int) ;
 int readline_hist ;
 int strlen (char const*) ;
 int vstr_init (int *,int) ;
 int vstr_null_terminated_str (int *) ;
 int vstr_printf (int *,char*,char*) ;
 int write (int,char const*,int) ;

void prompt_write_history(void) {
}
