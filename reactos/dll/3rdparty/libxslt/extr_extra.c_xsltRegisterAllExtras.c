
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int XSLT_LIBXSLT_NAMESPACE ;
 int XSLT_NAMESPACE ;
 int XSLT_SAXON_NAMESPACE ;
 int XSLT_XALAN_NAMESPACE ;
 int XSLT_XT_NAMESPACE ;
 int xsltDebug ;
 int * xsltDocumentComp ;
 int xsltDocumentElem ;
 int xsltFunctionNodeSet ;
 int xsltRegisterExtModuleElement (int const*,int ,int *,int ) ;
 int xsltRegisterExtModuleFunction (int const*,int ,int ) ;

void
xsltRegisterAllExtras (void) {
    xsltRegisterExtModuleFunction((const xmlChar *) "node-set",
      XSLT_LIBXSLT_NAMESPACE,
      xsltFunctionNodeSet);
    xsltRegisterExtModuleFunction((const xmlChar *) "node-set",
      XSLT_SAXON_NAMESPACE,
      xsltFunctionNodeSet);
    xsltRegisterExtModuleFunction((const xmlChar *) "node-set",
      XSLT_XT_NAMESPACE,
      xsltFunctionNodeSet);
    xsltRegisterExtModuleElement((const xmlChar *) "debug",
     XSLT_LIBXSLT_NAMESPACE,
     ((void*)0),
     xsltDebug);
    xsltRegisterExtModuleElement((const xmlChar *) "output",
     XSLT_SAXON_NAMESPACE,
     xsltDocumentComp,
     xsltDocumentElem);
    xsltRegisterExtModuleElement((const xmlChar *) "write",
     XSLT_XALAN_NAMESPACE,
     xsltDocumentComp,
     xsltDocumentElem);
    xsltRegisterExtModuleElement((const xmlChar *) "document",
     XSLT_XT_NAMESPACE,
     xsltDocumentComp,
     xsltDocumentElem);
    xsltRegisterExtModuleElement((const xmlChar *) "document",
     XSLT_NAMESPACE,
     xsltDocumentComp,
     xsltDocumentElem);
}
