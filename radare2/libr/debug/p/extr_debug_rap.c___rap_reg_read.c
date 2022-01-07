
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 int r_io_system (int ,char*) ;

__attribute__((used)) static int __rap_reg_read(RDebug *dbg, int type, ut8 *buf, int size) {
 r_io_system (dbg->iob.io, "dr");
 return 0;
}
