
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; } ;
typedef TYPE_1__ RConfigNode ;


 int print_node_options (TYPE_1__*) ;
 int r_cons_printf (char*) ;

__attribute__((used)) static bool cb_binstrenc (void *user, void *data) {
 RConfigNode *node = (RConfigNode *)data;
 if (node->value[0] == '?') {
  print_node_options (node);
  r_cons_printf ("  -- if string's 2nd & 4th bytes are 0 then utf16le else "
                 "if 2nd - 4th & 6th bytes are 0 & no char > 0x10ffff then utf32le else "
                 "if utf8 char detected then utf8 else latin1\n");
  return 0;
 }
 return 1;
}
