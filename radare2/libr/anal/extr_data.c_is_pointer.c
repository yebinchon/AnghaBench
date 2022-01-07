
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int buf2 ;
struct TYPE_4__ {int (* is_valid_offset ) (int ,int,int ) ;int (* read_at ) (int ,int,int *,int) ;int io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_1__ RIOBind ;
typedef TYPE_2__ RAnal ;


 scalar_t__ is_invalid (int *,int) ;
 int r_mem_get_num (int const*,int) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int,int *,int) ;

__attribute__((used)) static ut64 is_pointer(RAnal *anal, const ut8 *buf, int size) {
 ut64 n;
 ut8 buf2[32];
 RIOBind *iob = &anal->iob;
 if (size > sizeof (buf2)) {
  size = sizeof (buf2);
 }
 n = r_mem_get_num (buf, size);
 if (!n) {
  return 1;
 }
 if (n < 0x1000) return 0;
 if (n > 0xffffffffffffLL) return 0;

 if (iob->read_at (iob->io, n, buf2, size) != size) return 0;
 return is_invalid (buf2, size)? 0: n;

}
