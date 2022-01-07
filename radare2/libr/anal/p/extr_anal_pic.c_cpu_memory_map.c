
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_8__ {int io; TYPE_1__* (* open_at ) (int ,char*,int ,int ,int ) ;int (* fd_remap ) (int ,int ,int ) ;scalar_t__ (* fd_get_name ) (int ,int ) ;} ;
struct TYPE_7__ {int fd; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIOBind ;


 int R_PERM_RW ;
 int free (char*) ;
 char* r_str_newf (char*,int ) ;
 scalar_t__ stub1 (int ,int ) ;
 int stub2 (int ,int ,int ) ;
 TYPE_1__* stub3 (int ,char*,int ,int ,int ) ;

__attribute__((used)) static RIODesc *cpu_memory_map (RIOBind *iob, RIODesc *desc, ut32 addr,
    ut32 size) {
 char *mstr = r_str_newf ("malloc://%d", size);
 if (desc && iob->fd_get_name (iob->io, desc->fd)) {
  iob->fd_remap (iob->io, desc->fd, addr);
 } else {
  desc = iob->open_at (iob->io, mstr, R_PERM_RW, 0, addr);
 }
 free (mstr);
 return desc;
}
