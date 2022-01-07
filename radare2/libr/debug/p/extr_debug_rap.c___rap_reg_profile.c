
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 int free (char*) ;
 int r_cons_flush () ;
 int r_cons_pipe_close (int) ;
 int r_cons_pipe_open (char*,int,int ) ;
 int r_file_rm (char*) ;
 char* r_file_slurp (char*,int *) ;
 char* r_file_temp (char*) ;
 int r_io_system (int ,char*) ;

__attribute__((used)) static char *__rap_reg_profile(RDebug *dbg) {
 char *out, *tf = r_file_temp ("rap.XXXXXX");
 int fd = r_cons_pipe_open (tf, 1, 0);
 r_io_system (dbg->iob.io, "drp");
 r_cons_flush ();
 r_cons_pipe_close (fd);
 out = r_file_slurp (tf, ((void*)0));
 r_file_rm (tf);
 free (tf);
 return out;
}
