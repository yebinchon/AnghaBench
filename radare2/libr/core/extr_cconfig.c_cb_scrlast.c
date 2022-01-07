
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* context; } ;
struct TYPE_5__ {int i_value; } ;
struct TYPE_4__ {int lastEnabled; } ;
typedef TYPE_2__ RConfigNode ;


 TYPE_3__* r_cons_singleton () ;

__attribute__((used)) static bool cb_scrlast(void *user, void *data) {
 RConfigNode *node = (RConfigNode *) data;
 r_cons_singleton ()->context->lastEnabled = node->i_value;
 return 1;
}
