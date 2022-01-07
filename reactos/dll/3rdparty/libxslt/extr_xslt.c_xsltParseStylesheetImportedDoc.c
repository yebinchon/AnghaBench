
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltPrincipalStylesheetDataPtr ;
typedef TYPE_3__* xsltCompilerCtxtPtr ;
typedef int xmlNodePtr ;
typedef TYPE_4__* xmlDocPtr ;
struct TYPE_25__ {int URL; int * dict; } ;
struct TYPE_24__ {int depth; TYPE_2__* psData; TYPE_1__* style; int * dict; } ;
struct TYPE_23__ {scalar_t__ nsMap; } ;
struct TYPE_22__ {scalar_t__ errors; TYPE_4__* doc; TYPE_3__* compCtxt; struct TYPE_22__* principal; int * dict; TYPE_2__* principalData; struct TYPE_22__* parent; } ;


 int xmlDictFree (int *) ;
 int xmlDictReference (int *) ;
 int xmlDocGetRootElement (TYPE_4__*) ;
 int xsltCleanupStylesheetTree (TYPE_4__*,int ) ;
 TYPE_3__* xsltCompilationCtxtCreate (TYPE_1__*) ;
 int xsltCompilationCtxtFree (TYPE_3__*) ;
 int xsltCompilerNodePop (TYPE_3__*,int ) ;
 int xsltCompilerNodePush (TYPE_3__*,int ) ;
 int xsltFreeStylesheet (TYPE_1__*) ;
 int xsltGatherNamespaces (TYPE_1__*) ;
 int xsltGenericDebug (int ,char*,int ) ;
 int xsltGenericDebugContext ;
 TYPE_2__* xsltNewPrincipalStylesheetData () ;
 TYPE_1__* xsltNewStylesheet () ;
 int * xsltParseStylesheetProcess (TYPE_1__*,TYPE_4__*) ;
 int xsltRestoreDocumentNamespaces (scalar_t__,TYPE_4__*) ;

xsltStylesheetPtr
xsltParseStylesheetImportedDoc(xmlDocPtr doc,
          xsltStylesheetPtr parentStyle) {
    xsltStylesheetPtr retStyle;

    if (doc == ((void*)0))
 return(((void*)0));

    retStyle = xsltNewStylesheet();
    if (retStyle == ((void*)0))
 return(((void*)0));



    retStyle->parent = parentStyle;



    if (doc->dict != ((void*)0)) {
        xmlDictFree(retStyle->dict);
 retStyle->dict = doc->dict;





 xmlDictReference(retStyle->dict);
    }





    xsltGatherNamespaces(retStyle);
    retStyle->doc = doc;
    if (xsltParseStylesheetProcess(retStyle, doc) == ((void*)0)) {
  retStyle->doc = ((void*)0);
  xsltFreeStylesheet(retStyle);
  retStyle = ((void*)0);
    }
    if (retStyle != ((void*)0)) {
 if (retStyle->errors != 0) {
     retStyle->doc = ((void*)0);
     if (parentStyle == ((void*)0))
  xsltCleanupStylesheetTree(doc,
      xmlDocGetRootElement(doc));
     xsltFreeStylesheet(retStyle);
     retStyle = ((void*)0);
 }
    }


    return(retStyle);
}
