
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RIOBind ;


 int * bio ;
 int delta ;

void grubfs_bind_io (RIOBind *iob, ut64 _delta) {
 bio = iob;
 delta = _delta;
}
