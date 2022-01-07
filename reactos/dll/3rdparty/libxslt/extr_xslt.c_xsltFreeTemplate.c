
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltTemplatePtr ;
typedef int xsltTemplate ;
struct TYPE_5__ {struct TYPE_5__* templCountTab; struct TYPE_5__* templCalledTab; struct TYPE_5__* inheritedNs; struct TYPE_5__* match; } ;


 int memset (TYPE_1__*,int,int) ;
 int xmlFree (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeTemplate(xsltTemplatePtr template) {
    if (template == ((void*)0))
 return;
    if (template->match) xmlFree(template->match);
    if (template->inheritedNs) xmlFree(template->inheritedNs);


    if (template->templCalledTab) xmlFree(template->templCalledTab);
    if (template->templCountTab) xmlFree(template->templCountTab);

    memset(template, -1, sizeof(xsltTemplate));
    xmlFree(template);
}
