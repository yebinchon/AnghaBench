
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vringh_iov {size_t i; scalar_t__ consumed; TYPE_1__* iov; } ;
struct TYPE_2__ {int iov_base; int iov_len; } ;



__attribute__((used)) static inline void vringh_iov_reset(struct vringh_iov *iov)
{
 iov->iov[iov->i].iov_len += iov->consumed;
 iov->iov[iov->i].iov_base -= iov->consumed;
 iov->consumed = 0;
 iov->i = 0;
}
