
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aarch64_operand_error ;


 int AARCH64_OPDE_OTHER_ERROR ;
 int set_error (int *,int ,int,char const*) ;

__attribute__((used)) static inline void
set_other_error (aarch64_operand_error *mismatch_detail, int idx,
   const char* error)
{
  if (mismatch_detail == ((void*)0))
    return;
  set_error (mismatch_detail, AARCH64_OPDE_OTHER_ERROR, idx, error);
}
