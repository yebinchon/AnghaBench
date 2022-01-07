
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opcode; scalar_t__ cond; } ;
typedef TYPE_2__ aarch64_inst ;
struct TYPE_4__ {char* name; } ;


 int assert (int) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static void
remove_dot_suffix (char *name, const aarch64_inst *inst)
{
  char *ptr;
  size_t len;

  ptr = strchr (inst->opcode->name, '.');
  assert (ptr && inst->cond);
  len = ptr - inst->opcode->name;
  assert (len < 8);
  strncpy (name, inst->opcode->name, len);
  name[len] = '\0';
}
