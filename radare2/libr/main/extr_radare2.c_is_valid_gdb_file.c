
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fd; TYPE_1__* core; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int io; } ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RCoreFile ;


 TYPE_2__* r_io_desc_get (int ,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static bool is_valid_gdb_file(RCoreFile *fh) {
 RIODesc *d = fh && fh->core ? r_io_desc_get (fh->core->io, fh->fd) : ((void*)0);
 return d && strncmp (d->name, "gdb://", 6);
}
