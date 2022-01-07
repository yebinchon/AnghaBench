
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int BOOL ;


 scalar_t__ SCRIPTSTATE_CONNECTED ;
 scalar_t__ SCRIPTSTATE_DISCONNECTED ;
 scalar_t__ SCRIPTSTATE_STARTED ;

__attribute__((used)) static inline BOOL is_started(script_ctx_t *ctx)
{
    return ctx->state == SCRIPTSTATE_STARTED
        || ctx->state == SCRIPTSTATE_CONNECTED
        || ctx->state == SCRIPTSTATE_DISCONNECTED;
}
