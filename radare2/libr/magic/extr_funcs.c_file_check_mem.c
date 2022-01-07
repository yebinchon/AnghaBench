
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int last_cond; scalar_t__ last_match; scalar_t__ got_match; } ;
struct TYPE_8__ {unsigned int len; TYPE_3__* li; } ;
struct TYPE_9__ {TYPE_1__ c; } ;
typedef TYPE_2__ RMagic ;


 int COND_NONE ;
 int file_oomem (TYPE_2__*,size_t) ;
 TYPE_3__* malloc (size_t) ;
 TYPE_3__* realloc (TYPE_3__*,size_t) ;

int file_check_mem(RMagic *ms, unsigned int level) {
 if (level >= ms->c.len) {
  size_t len = (ms->c.len += 20) * sizeof (*ms->c.li);
  ms->c.li = (!ms->c.li) ? malloc (len) :
      realloc (ms->c.li, len);
  if (!ms->c.li) {
   file_oomem (ms, len);
   return -1;
  }
 }
 ms->c.li[level].got_match = 0;
 ms->c.li[level].last_match = 0;
 ms->c.li[level].last_cond = COND_NONE;
 return 0;
}
