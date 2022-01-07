
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_kiov {int max_num; int used; int i; int consumed; int * iov; } ;


 int VRINGH_IOV_ALLOCATED ;
 int kfree (int *) ;

__attribute__((used)) static inline void vringh_kiov_cleanup(struct vringh_kiov *kiov)
{
 if (kiov->max_num & VRINGH_IOV_ALLOCATED)
  kfree(kiov->iov);
 kiov->max_num = kiov->used = kiov->i = kiov->consumed = 0;
 kiov->iov = ((void*)0);
}
