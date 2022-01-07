
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xmlChar ;
struct TYPE_3__ {int exclPrefixMax; int exclPrefixNr; int * exclPrefix; int ** exclPrefixTab; } ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (int **,int) ;
 scalar_t__ xmlStrEqual (int *,int *) ;

__attribute__((used)) static int
exclPrefixPush(xsltStylesheetPtr style, xmlChar * value)
{
    int i;

    if (style->exclPrefixMax == 0) {
        style->exclPrefixMax = 4;
        style->exclPrefixTab =
            (xmlChar * *)xmlMalloc(style->exclPrefixMax *
                                   sizeof(style->exclPrefixTab[0]));
        if (style->exclPrefixTab == ((void*)0)) {
            xmlGenericError(xmlGenericErrorContext, "malloc failed !\n");
            return (-1);
        }
    }

    for (i = 0;i < style->exclPrefixNr;i++) {
        if (xmlStrEqual(style->exclPrefixTab[i], value))
     return(-1);
    }
    if (style->exclPrefixNr >= style->exclPrefixMax) {
        style->exclPrefixMax *= 2;
        style->exclPrefixTab =
            (xmlChar * *)xmlRealloc(style->exclPrefixTab,
                                    style->exclPrefixMax *
                                    sizeof(style->exclPrefixTab[0]));
        if (style->exclPrefixTab == ((void*)0)) {
            xmlGenericError(xmlGenericErrorContext, "realloc failed !\n");
            return (-1);
        }
    }
    style->exclPrefixTab[style->exclPrefixNr] = value;
    style->exclPrefix = value;
    return (style->exclPrefixNr++);
}
