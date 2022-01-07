
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef int xsltStylesheetPtr ;
typedef TYPE_1__* xsltParserContextPtr ;
typedef int xsltParserContext ;
struct TYPE_4__ {int ctxt; int style; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltParserContextPtr
xsltNewParserContext(xsltStylesheetPtr style, xsltTransformContextPtr ctxt) {
    xsltParserContextPtr cur;

    cur = (xsltParserContextPtr) xmlMalloc(sizeof(xsltParserContext));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewParserContext : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltParserContext));
    cur->style = style;
    cur->ctxt = ctxt;
    return(cur);
}
