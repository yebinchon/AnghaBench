
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* data; } ;
typedef TYPE_1__ aarch64_operand_error ;


 int AARCH64_OPDE_UNALIGNED ;
 int set_error (TYPE_1__*,int ,int,int *) ;

__attribute__((used)) static inline void
set_unaligned_error (aarch64_operand_error *mismatch_detail, int idx,
       int alignment)
{
  if (mismatch_detail == ((void*)0))
    return;
  set_error (mismatch_detail, AARCH64_OPDE_UNALIGNED, idx, ((void*)0));
  mismatch_detail->data[0] = alignment;
}
