
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aarch64_operand_error ;


 int _ (char*) ;
 int set_out_of_range_error (int *,int,int,int,int ) ;

__attribute__((used)) static inline void
set_multiplier_out_of_range_error (aarch64_operand_error *mismatch_detail,
       int idx, int lower_bound, int upper_bound)
{
  if (mismatch_detail == ((void*)0))
    return;
  set_out_of_range_error (mismatch_detail, idx, lower_bound, upper_bound,
     _("multiplier"));
}
