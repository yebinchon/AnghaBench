
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltExtDataPtr ;
typedef int * xmlHashTablePtr ;
typedef int xmlChar ;
struct TYPE_6__ {int * extData; } ;
struct TYPE_5__ {int * extInfos; } ;


 TYPE_2__* xmlHashLookup (int *,int const*) ;

xmlHashTablePtr
xsltGetExtInfo(xsltStylesheetPtr style, const xmlChar * URI)
{
    xsltExtDataPtr data;
    if (style != ((void*)0) && style->extInfos != ((void*)0)) {
        data = xmlHashLookup(style->extInfos, URI);
        if (data != ((void*)0) && data->extData != ((void*)0))
            return data->extData;
    }
    return ((void*)0);
}
