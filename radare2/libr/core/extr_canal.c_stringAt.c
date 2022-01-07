
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef scalar_t__ ut64 ;
typedef int buf ;
struct TYPE_3__ {int io; } ;
typedef TYPE_1__ RCore ;


 int is_string (scalar_t__*,int,int *) ;
 int r_io_read_at (int ,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static bool stringAt(RCore *core, ut64 addr) {
 ut8 buf[32];
 r_io_read_at (core->io, addr - 1, buf, sizeof (buf));

 if (buf[0] != 0) {
  return 0;
 }
 return is_string (buf + 1, 31, ((void*)0));
}
