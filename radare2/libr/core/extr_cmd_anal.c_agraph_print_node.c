
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* body; int title; } ;
typedef TYPE_1__ RANode ;


 int free (char*) ;
 char* r_base64_encode_dyn (char*,int) ;
 int r_cons_printf (char*) ;
 char* r_str_newf (char*,int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void agraph_print_node(RANode *n, void *user) {
 char *encbody, *cmd;
 int len = strlen (n->body);

 if (len > 0 && n->body[len - 1] == '\n') {
  len--;
 }
 encbody = r_base64_encode_dyn (n->body, len);
 cmd = r_str_newf ("agn \"%s\" base64:%s\n", n->title, encbody);
 r_cons_printf (cmd);
 free (cmd);
 free (encbody);
}
