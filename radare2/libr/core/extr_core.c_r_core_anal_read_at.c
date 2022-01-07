
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_2__ {int io; } ;
struct r_anal_t {TYPE_1__ iob; } ;


 int r_io_read_at (int ,int ,int *,int) ;

__attribute__((used)) static bool r_core_anal_read_at(struct r_anal_t *anal, ut64 addr, ut8 *buf, int len) {
 return r_io_read_at (anal->iob.io, addr, buf, len);
}
