
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hexagon_operand ;
typedef int hexagon_insn ;
struct TYPE_2__ {char* name; int reg_num; } ;


 TYPE_1__* hexagon_control_regs ;
 size_t hexagon_control_regs_count ;
 int hexagon_dis_operand (int const*,int ,int ,int ,char*,char*,char**) ;
 int r_str_ncasecmp (char*,char const*,size_t) ;
 int sprintf (char*,char*,char*) ;
 size_t strlen (char const*) ;

int
hexagon_extract_modifier_operand(
    const hexagon_operand *operand,
    hexagon_insn insn,
    char *enc,
    int *return_value,
    char **errmsg
)
{
  size_t i;
  char reg_name[100];
  static char xx[100];


  if(!hexagon_dis_operand(operand, insn, 0, 0, enc, reg_name, errmsg))
    return 0;



  for(i=0;i<hexagon_control_regs_count;i++){
    const char *name = hexagon_control_regs[i].name;
    size_t len = strlen(name);
    if(!r_str_ncasecmp(reg_name,name,len)){
      *return_value = hexagon_control_regs[i].reg_num;
      return 1;
    }
  }

  sprintf(xx, "Illegal modifier operand: %s", reg_name);
  *errmsg = xx;
  return 0;
}
