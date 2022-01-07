
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {double start_timestamp; int restart_complete; } ;


 double mp_time_sec () ;

__attribute__((used)) static bool is_busy(struct MPContext *mpctx)
{
    return !mpctx->restart_complete && mp_time_sec() - mpctx->start_timestamp > 0.3;
}
