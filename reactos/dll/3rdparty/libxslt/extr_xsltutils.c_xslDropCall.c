
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* drop ) () ;} ;


 int stub1 () ;
 TYPE_1__ xsltDebuggerCurrentCallbacks ;

void
xslDropCall(void)
{
    if (xsltDebuggerCurrentCallbacks.drop != ((void*)0))
 xsltDebuggerCurrentCallbacks.drop();
}
