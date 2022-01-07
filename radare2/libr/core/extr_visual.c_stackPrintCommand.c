
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* assembler; int config; } ;
struct TYPE_4__ {int bits; } ;
typedef TYPE_2__ RCore ;


 size_t PRINT_HEX_FORMATS ;
 size_t current0format ;
 char const** printHexFormats ;
 scalar_t__ r_config_get_i (int ,char*) ;

__attribute__((used)) static const char *stackPrintCommand(RCore *core) {
 if (current0format == 0) {
  if (r_config_get_i (core->config, "dbg.slow")) {
   return "pxr";
  }
  if (r_config_get_i (core->config, "stack.bytes")) {
   return "px";
  }
  switch (core->assembler->bits) {
  case 64: return "pxq"; break;
  case 32: return "pxw"; break;
  }
  return "px";
 }
 return printHexFormats[current0format % PRINT_HEX_FORMATS];
}
