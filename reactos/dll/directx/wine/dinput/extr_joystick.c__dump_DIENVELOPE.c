
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwSize; int dwFadeTime; int dwFadeLevel; int dwAttackTime; int dwAttackLevel; } ;
typedef TYPE_1__* LPCDIENVELOPE ;
typedef int DIENVELOPE ;


 int TRACE (char*,int ,int ,int ,int ) ;
 int WARN (char*,int) ;

__attribute__((used)) static void _dump_DIENVELOPE(LPCDIENVELOPE env)
{
    if (env->dwSize != sizeof(DIENVELOPE)) {
        WARN("Non-standard DIENVELOPE structure size %d.\n", env->dwSize);
    }
    TRACE("Envelope has attack (level: %d time: %d), fade (level: %d time: %d)\n",
          env->dwAttackLevel, env->dwAttackTime, env->dwFadeLevel, env->dwFadeTime);
}
