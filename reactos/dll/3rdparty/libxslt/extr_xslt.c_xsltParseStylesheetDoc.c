
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xmlDocPtr ;
struct TYPE_6__ {int * compCtxt; } ;


 int XSLT_CCTXT (TYPE_1__*) ;
 int xsltCompilationCtxtFree (int ) ;
 int xsltInitGlobals () ;
 TYPE_1__* xsltParseStylesheetImportedDoc (int ,int *) ;
 int xsltResolveStylesheetAttributeSet (TYPE_1__*) ;

xsltStylesheetPtr
xsltParseStylesheetDoc(xmlDocPtr doc) {
    xsltStylesheetPtr ret;

    xsltInitGlobals();

    ret = xsltParseStylesheetImportedDoc(doc, ((void*)0));
    if (ret == ((void*)0))
 return(((void*)0));

    xsltResolveStylesheetAttributeSet(ret);
    return(ret);
}
