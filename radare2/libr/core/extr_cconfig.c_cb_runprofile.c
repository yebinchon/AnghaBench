
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * value; } ;
struct TYPE_5__ {TYPE_1__* io; } ;
struct TYPE_4__ {int * runprofile; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int free (void*) ;
 int * strdup (int *) ;

__attribute__((used)) static bool cb_runprofile(void *user, void *data) {
 RCore *r = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 free ((void*)r->io->runprofile);
 if (!node || !*(node->value)) {
  r->io->runprofile = ((void*)0);
 } else {
  r->io->runprofile = strdup (node->value);
 }
 return 1;
}
