
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct os_sem_data {int dummy; } ;
typedef int sem_t ;
struct TYPE_4__ {int sem; } ;
typedef TYPE_1__ os_sem_t ;


 TYPE_1__* bzalloc (int) ;
 int sem_init (int *,int ,int) ;

int os_sem_init(os_sem_t **sem, int value)
{
 sem_t new_sem;
 int ret = sem_init(&new_sem, 0, value);
 if (ret != 0)
  return ret;

 *sem = bzalloc(sizeof(struct os_sem_data));
 (*sem)->sem = new_sem;
 return 0;
}
