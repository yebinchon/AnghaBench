
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int title; int body; } ;
typedef TYPE_1__ RANode ;


 int free (char*) ;
 int r_cons_printf (char*,int ,int ,int ,...) ;
 char* strdup (int ) ;

__attribute__((used)) static void agraph_print_node_dot(RANode *n, void *user) {
 char *label = strdup (n->body);

 if (!label || !*label) {
  r_cons_printf ("\"%s\" [URL=\"%s\", color=\"lightgray\", label=\"%s\"]\n",
    n->title, n->title, n->title);
 } else {
  r_cons_printf ("\"%s\" [URL=\"%s\", color=\"lightgray\", label=\"%s\\n%s\"]\n",
    n->title, n->title, n->title, label);
 }
 free (label);
}
