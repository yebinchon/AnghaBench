
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct magic_set* li; } ;
struct TYPE_4__ {struct magic_set* buf; struct magic_set* pbuf; } ;
struct magic_set {TYPE_1__ c; TYPE_2__ o; int * mlist; } ;


 size_t MAGIC_SETS ;
 int efree (struct magic_set*) ;
 int mlist_free (int ) ;

void
file_ms_free(struct magic_set *ms)
{
 size_t i;
 if (ms == ((void*)0))
  return;
 for (i = 0; i < MAGIC_SETS; i++)
  mlist_free(ms->mlist[i]);
 if (ms->o.pbuf) {
  efree(ms->o.pbuf);
 }
 if (ms->o.buf) {
  efree(ms->o.buf);
 }
 if (ms->c.li) {
  efree(ms->c.li);
 }
 efree(ms);
}
