
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int srw; int cs; } ;
struct TYPE_5__ {TYPE_1__ lock; scalar_t__ use_cs; } ;
typedef TYPE_2__ pthread_mutex_t ;
typedef int pthread_cond_t ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ETIMEDOUT ;
 scalar_t__ SleepConditionVariableCS (int *,int *,int ) ;
 scalar_t__ SleepConditionVariableSRW (int *,int *,int ,int ) ;

__attribute__((used)) static int cond_wait(pthread_cond_t *restrict cond,
                     pthread_mutex_t *restrict mutex,
                     DWORD ms)
{
    BOOL res;
    if (mutex->use_cs) {
        res = SleepConditionVariableCS(cond, &mutex->lock.cs, ms);
    } else {
        res = SleepConditionVariableSRW(cond, &mutex->lock.srw, ms, 0);
    }
    return res ? 0 : ETIMEDOUT;
}
