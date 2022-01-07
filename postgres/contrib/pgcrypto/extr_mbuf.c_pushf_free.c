
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int block_size; struct TYPE_7__* buf; int priv; TYPE_1__* op; } ;
struct TYPE_6__ {int (* free ) (int ) ;} ;
typedef TYPE_2__ PushFilter ;


 int px_free (TYPE_2__*) ;
 int px_memset (TYPE_2__*,int ,int) ;
 int stub1 (int ) ;

void
pushf_free(PushFilter *mp)
{
 if (mp->op->free)
  mp->op->free(mp->priv);

 if (mp->buf)
 {
  px_memset(mp->buf, 0, mp->block_size);
  px_free(mp->buf);
 }

 px_memset(mp, 0, sizeof(*mp));
 px_free(mp);
}
