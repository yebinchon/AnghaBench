
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int report_location; int callback_name; TYPE_3__* ctx; } ;
struct TYPE_7__ {TYPE_2__* slot; } ;
struct TYPE_5__ {int plugin; int name; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_4__ LogicalErrorCallbackState ;


 int InvalidXLogRecPtr ;
 int NameStr (int ) ;
 int errcontext (char*,int ,int ,int ,...) ;

__attribute__((used)) static void
output_plugin_error_callback(void *arg)
{
 LogicalErrorCallbackState *state = (LogicalErrorCallbackState *) arg;


 if (state->report_location != InvalidXLogRecPtr)
  errcontext("slot \"%s\", output plugin \"%s\", in the %s callback, associated LSN %X/%X",
       NameStr(state->ctx->slot->data.name),
       NameStr(state->ctx->slot->data.plugin),
       state->callback_name,
       (uint32) (state->report_location >> 32),
       (uint32) state->report_location);
 else
  errcontext("slot \"%s\", output plugin \"%s\", in the %s callback",
       NameStr(state->ctx->slot->data.name),
       NameStr(state->ctx->slot->data.plugin),
       state->callback_name);
}
