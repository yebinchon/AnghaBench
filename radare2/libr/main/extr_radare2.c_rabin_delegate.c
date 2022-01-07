
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* file; int io; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int user; } ;
struct TYPE_8__ {int fd; } ;
typedef int RThreadFunctionRet ;
typedef TYPE_2__ RThread ;
typedef TYPE_3__ RIODesc ;


 int R_TH_STOP ;
 int eprintf (char*) ;
 int free (int *) ;
 TYPE_6__ r ;
 int r_core_cmd (TYPE_6__*,char*,int ) ;
 scalar_t__ r_file_exists (int ) ;
 TYPE_3__* r_io_desc_get (int ,int ) ;
 char* r_sys_cmd_str (int *,int *,int *) ;
 int r_th_lock_enter (int ) ;
 int r_th_lock_leave (int ) ;
 int * rabin_cmd ;
 char* strchr (char*,char) ;

__attribute__((used)) static RThreadFunctionRet rabin_delegate(RThread *th) {
 RIODesc *d = r_io_desc_get (r.io, r.file->fd);
 if (rabin_cmd && r_file_exists (d->name)) {
  char *nptr, *ptr, *cmd = r_sys_cmd_str (rabin_cmd, ((void*)0), ((void*)0));
  ptr = cmd;
  if (ptr) {
   do {
    if (th) {
     r_th_lock_enter (th->user);
    }
    nptr = strchr (ptr, '\n');
    if (nptr) {
     *nptr = 0;
    }
    r_core_cmd (&r, ptr, 0);
    if (nptr) {
     ptr = nptr + 1;
    }
    if (th) {
     r_th_lock_leave (th->user);
    }
   } while (nptr);
  }

  free (rabin_cmd);
  rabin_cmd = ((void*)0);
 }
 if (th) {
  eprintf ("rabin2: done\n");
 }
 return R_TH_STOP;
}
