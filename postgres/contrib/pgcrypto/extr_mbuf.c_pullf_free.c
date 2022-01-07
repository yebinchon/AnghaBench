
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buflen; struct TYPE_7__* buf; int priv; TYPE_1__* op; } ;
struct TYPE_6__ {int (* free ) (int ) ;} ;
typedef TYPE_2__ PullFilter ;


 int px_free (TYPE_2__*) ;
 int px_memset (TYPE_2__*,int ,int) ;
 int stub1 (int ) ;

void
pullf_free(PullFilter *pf)
{
 if (pf->op->free)
  pf->op->free(pf->priv);

 if (pf->buf)
 {
  px_memset(pf->buf, 0, pf->buflen);
  px_free(pf->buf);
 }

 px_memset(pf, 0, sizeof(*pf));
 px_free(pf);
}
