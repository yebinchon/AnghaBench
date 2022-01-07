
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltExtDefPtr ;
struct TYPE_4__ {struct TYPE_4__* URI; struct TYPE_4__* prefix; } ;


 int xmlFree (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeExtDef(xsltExtDefPtr extensiond)
{
    if (extensiond == ((void*)0))
        return;
    if (extensiond->prefix != ((void*)0))
        xmlFree(extensiond->prefix);
    if (extensiond->URI != ((void*)0))
        xmlFree(extensiond->URI);
    xmlFree(extensiond);
}
