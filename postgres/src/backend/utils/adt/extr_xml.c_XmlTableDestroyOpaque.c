
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int natts; scalar_t__ magic; scalar_t__ xmlerrcxt; int * ctxt; int * doc; int * xpathcxt; int * xpathcomp; int * xpathobj; int ** xpathscomp; } ;
typedef TYPE_1__ XmlTableBuilderData ;
struct TYPE_7__ {int * opaque; } ;
typedef TYPE_2__ TableFuncScanState ;


 TYPE_1__* GetXmlTableBuilderPrivateData (TYPE_2__*,char*) ;
 int NO_XML_SUPPORT () ;
 int pg_xml_done (scalar_t__,int) ;
 int xmlFreeDoc (int *) ;
 int xmlFreeParserCtxt (int *) ;
 int xmlSetStructuredErrorFunc (void*,int ) ;
 int xmlXPathFreeCompExpr (int *) ;
 int xmlXPathFreeContext (int *) ;
 int xmlXPathFreeObject (int *) ;
 int xml_errorHandler ;

__attribute__((used)) static void
XmlTableDestroyOpaque(TableFuncScanState *state)
{
 NO_XML_SUPPORT();

}
