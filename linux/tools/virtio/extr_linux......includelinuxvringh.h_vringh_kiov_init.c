
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh_kiov {unsigned int max_num; struct kvec* iov; scalar_t__ consumed; scalar_t__ i; scalar_t__ used; } ;
struct kvec {int dummy; } ;



__attribute__((used)) static inline void vringh_kiov_init(struct vringh_kiov *kiov,
        struct kvec *kvec, unsigned num)
{
 kiov->used = kiov->i = 0;
 kiov->consumed = 0;
 kiov->max_num = num;
 kiov->iov = kvec;
}
