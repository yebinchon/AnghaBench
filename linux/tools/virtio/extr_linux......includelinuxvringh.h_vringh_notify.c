
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {int (* notify ) (struct vringh*) ;} ;


 int stub1 (struct vringh*) ;

__attribute__((used)) static inline void vringh_notify(struct vringh *vrh)
{
 if (vrh->notify)
  vrh->notify(vrh);
}
