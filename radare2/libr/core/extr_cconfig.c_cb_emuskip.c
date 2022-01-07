
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; } ;
typedef TYPE_1__ RConfigNode ;


 int print_node_options (TYPE_1__*) ;
 int r_cons_printf (char*) ;
 int strlen (char*) ;

__attribute__((used)) static bool cb_emuskip(void *user, void *data) {
 RConfigNode *node = (RConfigNode*) data;
 if (*node->value == '?') {
  if (strlen (node->value) > 1 && node->value[1] == '?') {
   r_cons_printf ("Concatenation of meta types encoded as characters:\n" "'d': data\n'c': code\n's': string\n'f': format\n'm': magic\n" "'h': hide\n'C': comment\n'r': run\n" "(default is 'ds' to skip data and strings)\n");



  } else {
   print_node_options (node);
  }
  return 0;
 }
 return 1;
}
