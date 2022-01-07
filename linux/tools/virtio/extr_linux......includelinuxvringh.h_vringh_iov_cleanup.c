
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_iov {int max_num; int used; int i; int consumed; int * iov; } ;


 int VRINGH_IOV_ALLOCATED ;
 int kfree (int *) ;

__attribute__((used)) static inline void vringh_iov_cleanup(struct vringh_iov *iov)
{
 if (iov->max_num & VRINGH_IOV_ALLOCATED)
  kfree(iov->iov);
 iov->max_num = iov->used = iov->i = iov->consumed = 0;
 iov->iov = ((void*)0);
}
