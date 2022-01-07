
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* assembler; } ;
struct TYPE_6__ {TYPE_1__* cur; } ;
struct TYPE_5__ {char* arch; } ;
typedef TYPE_3__ RCore ;


 char* strstr (char*,char*) ;

__attribute__((used)) static void _handle_call(RCore *core, char *line, char **str) {
 if (!core || !core->assembler || !core->assembler->cur) {
  *str = ((void*)0);
  return;
 }
 if (strstr (core->assembler->cur->arch, "x86")) {
  *str = strstr (line, "call ");
 } else if (strstr (core->assembler->cur->arch, "arm")) {
  *str = strstr (line, " b ");
  if (*str && strstr (*str, " 0x")) {




   *str = ((void*)0);
  }
  if (!*str) {
   *str = strstr (line, "bl ");
  }
  if (!*str) {
   *str = strstr (line, "bx ");
  }
 }
}
