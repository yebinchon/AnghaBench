
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {int num; TYPE_1__* avail; } ;
struct vringh {scalar_t__ last_avail_idx; TYPE_2__ vring; int weak_barriers; } ;
struct TYPE_3__ {int * ring; int idx; } ;


 int get_user (scalar_t__,int *) ;
 int virtio_rmb (int ) ;

__attribute__((used)) static inline int vringh_get_head(struct vringh *vrh, u16 *head)
{
 u16 avail_idx, i;
 int err;

 err = get_user(avail_idx, &vrh->vring.avail->idx);
 if (err)
  return err;

 if (vrh->last_avail_idx == avail_idx)
  return 0;


 virtio_rmb(vrh->weak_barriers);

 i = vrh->last_avail_idx & (vrh->vring.num - 1);

 err = get_user(*head, &vrh->vring.avail->ring[i]);
 if (err)
  return err;

 vrh->last_avail_idx++;
 return 1;
}
