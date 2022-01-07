
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_iov {unsigned int max_num; struct iovec* iov; scalar_t__ consumed; scalar_t__ i; scalar_t__ used; } ;
struct iovec {int dummy; } ;



__attribute__((used)) static inline void vringh_iov_init(struct vringh_iov *iov,
       struct iovec *iovec, unsigned num)
{
 iov->used = iov->i = 0;
 iov->consumed = 0;
 iov->max_num = num;
 iov->iov = iovec;
}
