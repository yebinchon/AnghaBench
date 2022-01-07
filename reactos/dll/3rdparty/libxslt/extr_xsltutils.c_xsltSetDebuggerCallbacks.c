
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltDebuggerCallbacksPtr ;
struct TYPE_4__ {int drop; int add; int handler; } ;
struct TYPE_3__ {int drop; int add; int handler; } ;


 int XSLT_CALLBACK_NUMBER ;
 TYPE_2__ xsltDebuggerCurrentCallbacks ;

int
xsltSetDebuggerCallbacks(int no, void *block)
{
    xsltDebuggerCallbacksPtr callbacks;

    if ((block == ((void*)0)) || (no != XSLT_CALLBACK_NUMBER))
 return(-1);

    callbacks = (xsltDebuggerCallbacksPtr) block;
    xsltDebuggerCurrentCallbacks.handler = callbacks->handler;
    xsltDebuggerCurrentCallbacks.add = callbacks->add;
    xsltDebuggerCurrentCallbacks.drop = callbacks->drop;
    return(0);
}
