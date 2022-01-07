
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block_flags_stat_t {int from; int step; TYPE_2__* as; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {TYPE_1__* block; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_3__ RFlagItem ;



__attribute__((used)) static bool block_flags_stat(RFlagItem *fi, void *user) {
 struct block_flags_stat_t *u = (struct block_flags_stat_t *)user;
 int piece = (fi->offset - u->from) / u->step;
 u->as->block[piece].flags++;
 return 1;
}
