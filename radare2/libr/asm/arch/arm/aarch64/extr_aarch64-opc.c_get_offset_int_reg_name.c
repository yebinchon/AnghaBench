
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int regno; } ;
struct TYPE_8__ {TYPE_2__ offset; } ;
struct TYPE_6__ {int kind; } ;
struct TYPE_9__ {TYPE_3__ addr; TYPE_1__ shifter; } ;
typedef TYPE_4__ aarch64_opnd_info ;






 int AARCH64_OPND_QLF_W ;
 int AARCH64_OPND_QLF_X ;
 int abort () ;
 char const* get_int_reg_name (int ,int ,int ) ;

__attribute__((used)) static inline const char *
get_offset_int_reg_name (const aarch64_opnd_info *opnd)
{
  switch (opnd->shifter.kind)
    {
    case 128:
    case 130:
      return get_int_reg_name (opnd->addr.offset.regno, AARCH64_OPND_QLF_W, 0);

    case 131:
    case 129:
      return get_int_reg_name (opnd->addr.offset.regno, AARCH64_OPND_QLF_X, 0);

    default:
      abort ();
    }
}
