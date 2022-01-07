
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ RDebug ;


 int R_MIN (int,int) ;
 int free (int *) ;
 int memcpy (int *,int *,int ) ;
 int * r_reg_get_bytes (int ,int,int*) ;

__attribute__((used)) static int __reg_read (RDebug *dbg, int type, ut8 *buf, int size) {
 int sz;

 ut8 *bytes = r_reg_get_bytes (dbg->reg, type, &sz);
 memcpy (buf, bytes, R_MIN (size, sz));
 free (bytes);
 return size;
}
