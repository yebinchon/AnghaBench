
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ud {TYPE_1__* le; } ;
struct TYPE_2__ {scalar_t__ type; int * table; } ;


 int UD_ASSERT (int) ;
 int UD_RETURN_ON_ERROR (struct ud*) ;
 scalar_t__ UD_TAB__OPC_TABLE ;
 int decode_ext (struct ud*,int ) ;
 size_t inp_curr (struct ud*) ;

__attribute__((used)) static int
decode_opcode(struct ud *u)
{
  uint16_t ptr;
  UD_ASSERT(u->le->type == UD_TAB__OPC_TABLE);
  UD_RETURN_ON_ERROR(u);
  ptr = u->le->table[inp_curr(u)];
  return decode_ext(u, ptr);
}
