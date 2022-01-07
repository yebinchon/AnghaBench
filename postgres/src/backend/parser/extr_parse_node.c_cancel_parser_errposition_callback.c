
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int previous; } ;
struct TYPE_5__ {TYPE_1__ errcallback; } ;
typedef TYPE_2__ ParseCallbackState ;


 int error_context_stack ;

void
cancel_parser_errposition_callback(ParseCallbackState *pcbstate)
{

 error_context_stack = pcbstate->errcallback.previous;
}
