
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {void* jump; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* GB_IB_DST (int const,int const,int ) ;
 scalar_t__ GB_IS_RAM_DST (int const,int const) ;
 int GB_IS_VBANK_DST (int const,int const) ;
 void* GB_SOFTCAST (int const,int const) ;
 int R_META_TYPE_COMMENT ;
 int r_meta_set_string (int *,int ,int ,char*) ;

__attribute__((used)) static ut8 gb_op_calljump(RAnal *a, RAnalOp *op, const ut8 *data, ut64 addr)
{
 if (GB_IS_RAM_DST (data[1],data[2])) {
  op->jump = GB_SOFTCAST (data[1], data[2]);
  r_meta_set_string (a, R_META_TYPE_COMMENT, addr, "--> unpredictable");
  return 0;
 }
 if (!GB_IS_VBANK_DST (data[1], data[2])) {
  op->jump = GB_SOFTCAST(data[1], data[2]);
 } else {
  op->jump = GB_IB_DST (data[1], data[2], addr);
 }
 return 1;
}
