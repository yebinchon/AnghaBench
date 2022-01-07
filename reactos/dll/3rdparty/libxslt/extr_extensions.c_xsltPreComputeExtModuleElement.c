
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * xsltStylesheetPtr ;
typedef TYPE_2__* xsltExtElementPtr ;
typedef int * xsltElemPreCompPtr ;
typedef TYPE_3__* xmlNodePtr ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__* ns; int name; } ;
struct TYPE_8__ {int transform; int * (* precomp ) (int *,TYPE_3__*,int ) ;} ;
struct TYPE_7__ {int href; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int * stub1 (int *,TYPE_3__*,int ) ;
 scalar_t__ xmlHashLookup2 (int ,int ,int ) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltElementsHash ;
 int xsltExtMutex ;
 int * xsltNewElemPreComp (int *,TYPE_3__*,int ) ;

xsltElemPreCompPtr
xsltPreComputeExtModuleElement(xsltStylesheetPtr style, xmlNodePtr inst)
{
    xsltExtElementPtr ext;
    xsltElemPreCompPtr comp = ((void*)0);

    if ((style == ((void*)0)) || (inst == ((void*)0)) ||
        (inst->type != XML_ELEMENT_NODE) || (inst->ns == ((void*)0)))
        return (((void*)0));

    xmlMutexLock(xsltExtMutex);

    ext = (xsltExtElementPtr)
        xmlHashLookup2(xsltElementsHash, inst->name, inst->ns->href);

    xmlMutexUnlock(xsltExtMutex);




    if (ext == ((void*)0))
        return (((void*)0));

    if (ext->precomp != ((void*)0)) {
        comp = ext->precomp(style, inst, ext->transform);
    }
    if (comp == ((void*)0)) {





        comp = xsltNewElemPreComp(style, inst, ext->transform);
    }

    return (comp);
}
