
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int dis_mode; int error; int pfx_rex; } ;
typedef enum ud_type { ____Placeholder_ud_type } ud_type ;


 int UD_ASSERT (int) ;
 int UD_NONE ;
 int UD_R_AL ;
 int UD_R_AX ;
 int UD_R_EAX ;
 int UD_R_RAX ;
 int UD_R_SPL ;

__attribute__((used)) static enum ud_type
decode_gpr(register struct ud* u, unsigned int s, unsigned char rm)
{
  switch (s) {
    case 64:
        return UD_R_RAX + rm;
    case 32:
        return UD_R_EAX + rm;
    case 16:
        return UD_R_AX + rm;
    case 8:
        if (u->dis_mode == 64 && u->pfx_rex) {
            if (rm >= 4)
                return UD_R_SPL + (rm-4);
            return UD_R_AL + rm;
        } else return UD_R_AL + rm;
    case 0:

        UD_ASSERT(u->error);
        return UD_NONE;
    default:
        UD_ASSERT(!"invalid operand size");
        return UD_NONE;
  }
}
