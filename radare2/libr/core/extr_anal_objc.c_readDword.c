
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int buf ;
struct TYPE_5__ {TYPE_1__* core; } ;
struct TYPE_4__ {int io; } ;
typedef TYPE_2__ RCoreObjc ;


 int r_io_read_at (int ,int ,int *,int) ;
 int r_read_le32 (int *) ;

__attribute__((used)) static ut32 readDword (RCoreObjc *objc, ut64 addr) {
 ut8 buf[4];
 (void)r_io_read_at (objc->core->io, addr, buf, sizeof (buf));
 return r_read_le32 (buf);
}
