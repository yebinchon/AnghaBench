
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformFunction ;
typedef int xsltStylesheetPtr ;
typedef int * xsltElemPreCompPtr ;
typedef int xsltElemPreComp ;
typedef int xmlNodePtr ;


 int memset (int *,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltFreeElemPreComp ;
 int xsltInitElemPreComp (int *,int ,int ,int ,int ) ;
 int xsltTransformError (int *,int ,int *,char*) ;

xsltElemPreCompPtr
xsltNewElemPreComp(xsltStylesheetPtr style, xmlNodePtr inst,
                   xsltTransformFunction function)
{
    xsltElemPreCompPtr cur;

    cur = (xsltElemPreCompPtr) xmlMalloc(sizeof(xsltElemPreComp));
    if (cur == ((void*)0)) {
        xsltTransformError(((void*)0), style, ((void*)0),
                           "xsltNewExtElement : malloc failed\n");
        return (((void*)0));
    }
    memset(cur, 0, sizeof(xsltElemPreComp));

    xsltInitElemPreComp(cur, style, inst, function, xsltFreeElemPreComp);

    return (cur);
}
