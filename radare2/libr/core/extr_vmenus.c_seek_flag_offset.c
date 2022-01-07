
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seek_flag_offset_t {scalar_t__* next; scalar_t__ offset; scalar_t__ is_next; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static bool seek_flag_offset(RFlagItem *fi, void *user) {
 struct seek_flag_offset_t *u = (struct seek_flag_offset_t *)user;
 if (u->is_next) {
  if (fi->offset < *u->next && fi->offset > u->offset) {
   *u->next = fi->offset;
  }
 } else {
  if (fi->offset > *u->next && fi->offset < u->offset) {
   *u->next = fi->offset;
  }
 }
 return 1;
}
