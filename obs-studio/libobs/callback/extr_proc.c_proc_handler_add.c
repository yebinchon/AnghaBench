
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_info {void* data; int callback; int func; } ;
struct TYPE_3__ {int procs; } ;
typedef TYPE_1__ proc_handler_t ;
typedef int proc_handler_proc_t ;


 int LOG_ERROR ;
 int blog (int ,char*,char const*) ;
 int da_push_back (int ,struct proc_info*) ;
 int memset (struct proc_info*,int ,int) ;
 int parse_decl_string (int *,char const*) ;

void proc_handler_add(proc_handler_t *handler, const char *decl_string,
        proc_handler_proc_t proc, void *data)
{
 if (!handler)
  return;

 struct proc_info pi;
 memset(&pi, 0, sizeof(struct proc_info));

 if (!parse_decl_string(&pi.func, decl_string)) {
  blog(LOG_ERROR, "Function declaration invalid: %s",
       decl_string);
  return;
 }

 pi.callback = proc;
 pi.data = data;

 da_push_back(handler->procs, &pi);
}
