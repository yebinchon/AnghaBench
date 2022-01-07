
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;


 int O_RDONLY ;
 int close (int) ;
 char* getenv (char*) ;
 int open (int ,int ) ;
 int read (int,char*,int) ;
 int readline_init0 () ;
 int readline_push_history (int ) ;
 int vstr_add_byte (int *,char) ;
 int vstr_clear (int *) ;
 int vstr_init (int *,int) ;
 int vstr_null_terminated_str (int *) ;
 int vstr_printf (int *,char*,char*) ;
 int vstr_reset (int *) ;

void prompt_read_history(void) {
}
