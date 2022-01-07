
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fix_rows; } ;
struct TYPE_3__ {scalar_t__ i_value; } ;
typedef TYPE_1__ RConfigNode ;


 TYPE_2__* r_cons_singleton () ;

__attribute__((used)) static bool cb_fixrows(void *user, void *data) {
 RConfigNode *node = (RConfigNode *) data;
 r_cons_singleton ()->fix_rows = (int)node->i_value;
 return 1;
}
