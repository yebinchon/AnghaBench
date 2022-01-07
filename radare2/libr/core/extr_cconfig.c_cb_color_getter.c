
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buf ;
struct TYPE_8__ {TYPE_1__* context; } ;
struct TYPE_7__ {int value; int i_value; } ;
struct TYPE_6__ {int color_mode; } ;
typedef TYPE_2__ RConfigNode ;


 int free (int ) ;
 int r_config_node_value_format_i (char*,int,int ,TYPE_2__*) ;
 TYPE_3__* r_cons_singleton () ;
 scalar_t__ strcmp (int ,char*) ;
 int strdup (char*) ;

__attribute__((used)) static bool cb_color_getter(void *user, RConfigNode *node) {
 (void)user;
 node->i_value = r_cons_singleton ()->context->color_mode;
 char buf[128];
 r_config_node_value_format_i (buf, sizeof (buf), r_cons_singleton ()->context->color_mode, node);
 if (!node->value || strcmp (node->value, buf) != 0) {
  free (node->value);
  node->value = strdup (buf);
 }
 return 1;
}
