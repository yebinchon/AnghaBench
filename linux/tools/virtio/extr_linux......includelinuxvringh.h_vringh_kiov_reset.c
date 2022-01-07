
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vringh_kiov {size_t i; scalar_t__ consumed; TYPE_1__* iov; } ;
struct TYPE_2__ {int iov_base; int iov_len; } ;



__attribute__((used)) static inline void vringh_kiov_reset(struct vringh_kiov *kiov)
{
 kiov->iov[kiov->i].iov_len += kiov->consumed;
 kiov->iov[kiov->i].iov_base -= kiov->consumed;
 kiov->consumed = 0;
 kiov->i = 0;
}
