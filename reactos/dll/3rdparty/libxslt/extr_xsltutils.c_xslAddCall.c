
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xsltTemplatePtr ;
typedef int xmlNodePtr ;
struct TYPE_2__ {int (* add ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;
 TYPE_1__ xsltDebuggerCurrentCallbacks ;

int
xslAddCall(xsltTemplatePtr templ, xmlNodePtr source)
{
    if (xsltDebuggerCurrentCallbacks.add != ((void*)0))
 return(xsltDebuggerCurrentCallbacks.add(templ, source));
    return(0);
}
