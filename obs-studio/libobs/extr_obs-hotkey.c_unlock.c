
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 TYPE_2__* obs ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void unlock(void)
{
 pthread_mutex_unlock(&obs->hotkeys.mutex);
}
