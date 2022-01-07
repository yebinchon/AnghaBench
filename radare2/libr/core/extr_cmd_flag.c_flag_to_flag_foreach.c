
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct flag_to_flag_t {scalar_t__ next; scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static bool flag_to_flag_foreach(RFlagItem *fi, void *user) {
 struct flag_to_flag_t *u = (struct flag_to_flag_t *)user;
 if (fi->offset < u->next && fi->offset > u->offset) {
  u->next = fi->offset;
 }
 return 1;
}
