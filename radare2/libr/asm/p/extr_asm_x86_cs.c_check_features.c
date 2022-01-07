
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* detail; } ;
typedef TYPE_2__ cs_insn ;
struct TYPE_8__ {int features; } ;
struct TYPE_6__ {int groups_count; int* groups; } ;
typedef TYPE_3__ RAsm ;


 int X86_GRP_MODE32 ;
 int X86_GRP_MODE64 ;
 int cd ;
 char* cs_group_name (int ,int) ;
 int strstr (int ,char const*) ;

__attribute__((used)) static int check_features(RAsm *a, cs_insn *insn) {
 const char *name;
 int i;
 if (!insn || !insn->detail) {
  return 1;
 }
 for (i = 0; i < insn->detail->groups_count; i++) {
  int id = insn->detail->groups[i];
  if (id < 128) {
   continue;
  }
  if (id == X86_GRP_MODE32) {
   continue;
  }
  if (id == X86_GRP_MODE64) {
   continue;
  }
  name = cs_group_name (cd, id);
  if (!name) {
   return 1;
  }
  if (!strstr (a->features, name)) {
   return 0;
  }
 }
 return 1;
}
