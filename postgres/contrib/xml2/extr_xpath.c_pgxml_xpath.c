
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * res; TYPE_2__* ctxt; int * doctree; } ;
typedef TYPE_1__ xpath_workspace ;
typedef int * xmlXPathObjectPtr ;
typedef int * xmlXPathCompExprPtr ;
typedef int xmlChar ;
typedef int text ;
typedef int int32 ;
struct TYPE_7__ {int node; } ;
typedef int PgXmlErrorContext ;


 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PG_XML_STRICTNESS_LEGACY ;
 scalar_t__ VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int cleanup_workspace (TYPE_1__*) ;
 int pg_xml_done (int *,int) ;
 int * pgxml_parser_init (int ) ;
 int xmlDocGetRootElement (int *) ;
 int * xmlParseMemory (char*,int ) ;
 int * xmlXPathCompile (int *) ;
 int * xmlXPathCompiledEval (int *,TYPE_2__*) ;
 int xmlXPathFreeCompExpr (int *) ;
 TYPE_2__* xmlXPathNewContext (int *) ;
 int xml_ereport (int *,int ,int ,char*) ;

__attribute__((used)) static xmlXPathObjectPtr
pgxml_xpath(text *document, xmlChar *xpath, xpath_workspace *workspace)
{
 int32 docsize = VARSIZE_ANY_EXHDR(document);
 PgXmlErrorContext *xmlerrcxt;
 xmlXPathCompExprPtr comppath;

 workspace->doctree = ((void*)0);
 workspace->ctxt = ((void*)0);
 workspace->res = ((void*)0);

 xmlerrcxt = pgxml_parser_init(PG_XML_STRICTNESS_LEGACY);

 PG_TRY();
 {
  workspace->doctree = xmlParseMemory((char *) VARDATA_ANY(document),
           docsize);
  if (workspace->doctree != ((void*)0))
  {
   workspace->ctxt = xmlXPathNewContext(workspace->doctree);
   workspace->ctxt->node = xmlDocGetRootElement(workspace->doctree);


   comppath = xmlXPathCompile(xpath);
   if (comppath == ((void*)0))
    xml_ereport(xmlerrcxt, ERROR, ERRCODE_EXTERNAL_ROUTINE_EXCEPTION,
       "XPath Syntax Error");


   workspace->res = xmlXPathCompiledEval(comppath, workspace->ctxt);

   xmlXPathFreeCompExpr(comppath);
  }
 }
 PG_CATCH();
 {
  cleanup_workspace(workspace);

  pg_xml_done(xmlerrcxt, 1);

  PG_RE_THROW();
 }
 PG_END_TRY();

 if (workspace->res == ((void*)0))
  cleanup_workspace(workspace);

 pg_xml_done(xmlerrcxt, 0);

 return workspace->res;
}
