
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int * xmlHashTablePtr ;
struct TYPE_3__ {int * namedTemplates; int * commentMatch; int * piMatch; int * textMatch; int * parentMatch; int * attrMatch; int * elemMatch; int * keyMatch; int * rootMatch; int * templatesHash; } ;


 int xmlHashFree (int *,int *) ;
 int xsltFreeCompMatchList (int *) ;
 int * xsltFreeCompMatchListEntry ;

void
xsltFreeTemplateHashes(xsltStylesheetPtr style) {
    if (style->templatesHash != ((void*)0))
 xmlHashFree((xmlHashTablePtr) style->templatesHash,
      xsltFreeCompMatchListEntry);
    if (style->rootMatch != ((void*)0))
        xsltFreeCompMatchList(style->rootMatch);
    if (style->keyMatch != ((void*)0))
        xsltFreeCompMatchList(style->keyMatch);
    if (style->elemMatch != ((void*)0))
        xsltFreeCompMatchList(style->elemMatch);
    if (style->attrMatch != ((void*)0))
        xsltFreeCompMatchList(style->attrMatch);
    if (style->parentMatch != ((void*)0))
        xsltFreeCompMatchList(style->parentMatch);
    if (style->textMatch != ((void*)0))
        xsltFreeCompMatchList(style->textMatch);
    if (style->piMatch != ((void*)0))
        xsltFreeCompMatchList(style->piMatch);
    if (style->commentMatch != ((void*)0))
        xsltFreeCompMatchList(style->commentMatch);
    if (style->namedTemplates != ((void*)0))
        xmlHashFree(style->namedTemplates, ((void*)0));
}
