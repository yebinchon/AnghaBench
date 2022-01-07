
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltExtDataPtr ;
typedef int xmlChar ;
struct TYPE_9__ {void* extData; } ;
struct TYPE_8__ {int * extInfos; struct TYPE_8__* parent; } ;


 scalar_t__ xmlHashLookup (int *,int const*) ;
 int * xsltExtensionsHash ;
 TYPE_1__* xsltNextImport (TYPE_1__*) ;
 TYPE_2__* xsltStyleInitializeStylesheetModule (TYPE_1__*,int const*) ;

void *
xsltStyleGetExtData(xsltStylesheetPtr style, const xmlChar * URI)
{
    xsltExtDataPtr dataContainer = ((void*)0);
    xsltStylesheetPtr tmpStyle;

    if ((style == ((void*)0)) || (URI == ((void*)0)) ||
 (xsltExtensionsHash == ((void*)0)))
 return (((void*)0));
    tmpStyle = style;
    while (tmpStyle != ((void*)0)) {
 if (tmpStyle->extInfos != ((void*)0)) {
     dataContainer =
  (xsltExtDataPtr) xmlHashLookup(tmpStyle->extInfos, URI);
     if (dataContainer != ((void*)0)) {
  return(dataContainer->extData);
     }
 }
 tmpStyle = xsltNextImport(tmpStyle);
    }
    tmpStyle = style;


    dataContainer =
        xsltStyleInitializeStylesheetModule(tmpStyle, URI);
    if (dataContainer != ((void*)0))
 return (dataContainer->extData);
    return(((void*)0));
}
