
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int flags; scalar_t__ value; } ;
typedef TYPE_1__ aarch64_sys_ins_reg ;
typedef int aarch64_feature_set ;


 int AARCH64_CPU_HAS_FEATURE (int const,int ) ;
 int AARCH64_FEATURE_V8_2 ;
 int C12 ;
 int C7 ;
 int C9 ;
 scalar_t__ CPENS (int,int ,int ,int) ;
 int FALSE ;
 int F_ARCHEXT ;
 int TRUE ;

extern bfd_boolean
aarch64_sys_ins_reg_supported_p (const aarch64_feature_set features,
     const aarch64_sys_ins_reg *reg)
{
  if (!(reg->flags & F_ARCHEXT))
    return TRUE;


  if (reg->value == CPENS (3, C7, C12, 1)
      && !AARCH64_CPU_HAS_FEATURE (features, AARCH64_FEATURE_V8_2))
    return FALSE;


  if ((reg->value == CPENS (0, C7, C9, 0)
       || reg->value == CPENS (0, C7, C9, 1))
      && !AARCH64_CPU_HAS_FEATURE (features, AARCH64_FEATURE_V8_2))
    return FALSE;

  return TRUE;
}
