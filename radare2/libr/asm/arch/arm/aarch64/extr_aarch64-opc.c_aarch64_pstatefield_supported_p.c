
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int flags; int value; } ;
typedef TYPE_1__ aarch64_sys_reg ;
typedef int aarch64_feature_set ;


 int AARCH64_CPU_HAS_FEATURE (int const,int ) ;
 int AARCH64_FEATURE_PAN ;
 int AARCH64_FEATURE_V8_2 ;
 int AARCH64_FEATURE_V8_4 ;
 int FALSE ;
 int F_ARCHEXT ;
 int TRUE ;

bfd_boolean
aarch64_pstatefield_supported_p (const aarch64_feature_set features,
     const aarch64_sys_reg *reg)
{
  if (!(reg->flags & F_ARCHEXT))
    return TRUE;


  if (reg->value == 0x04
      && !AARCH64_CPU_HAS_FEATURE (features, AARCH64_FEATURE_PAN))
    return FALSE;


  if (reg->value == 0x03
      && !AARCH64_CPU_HAS_FEATURE (features, AARCH64_FEATURE_V8_2))
    return FALSE;


  if (reg->value == 0x1a
      && !AARCH64_CPU_HAS_FEATURE (features, AARCH64_FEATURE_V8_4))
    return FALSE;

  return TRUE;
}
