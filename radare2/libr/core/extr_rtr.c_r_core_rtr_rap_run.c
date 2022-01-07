
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* context; } ;
struct TYPE_7__ {int io; } ;
struct TYPE_6__ {int breaked; } ;
typedef int RIODesc ;
typedef TYPE_2__ RCore ;


 int R_PERM_RW ;
 TYPE_5__* r_cons_singleton () ;
 int r_core_serve (TYPE_2__*,int *) ;
 int r_io_desc_close (int *) ;
 scalar_t__ r_io_is_listener (int ) ;
 int * r_io_open_nomap (int ,char*,int,int) ;
 char* r_str_newf (char*,char const*) ;

__attribute__((used)) static bool r_core_rtr_rap_run(RCore *core, const char *input) {
 char *file = r_str_newf ("rap://%s", input);
 int flags = R_PERM_RW;
 RIODesc *fd = r_io_open_nomap (core->io, file, flags, 0644);
 if (fd) {
  if (r_io_is_listener (core->io)) {
   if (!r_core_serve (core, fd)) {
    r_cons_singleton ()->context->breaked = 1;
   }
   r_io_desc_close (fd);


  }
 } else {
  r_cons_singleton ()->context->breaked = 1;
 }
 return !r_cons_singleton ()->context->breaked;

}
