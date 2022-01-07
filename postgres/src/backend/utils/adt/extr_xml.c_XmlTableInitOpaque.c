
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xmlXPathCompExprPtr ;
typedef int * xmlParserCtxtPtr ;
struct TYPE_8__ {int natts; int * ctxt; TYPE_3__* xmlerrcxt; void* xpathscomp; int magic; } ;
typedef TYPE_1__ XmlTableBuilderData ;
struct TYPE_9__ {TYPE_1__* opaque; } ;
typedef TYPE_2__ TableFuncScanState ;
struct TYPE_10__ {scalar_t__ err_occurred; } ;
typedef TYPE_3__ PgXmlErrorContext ;


 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int NO_XML_SUPPORT () ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PG_XML_STRICTNESS_ALL ;
 int XMLTABLE_CONTEXT_MAGIC ;
 void* palloc0 (int) ;
 int pg_xml_done (TYPE_3__*,int) ;
 TYPE_3__* pg_xml_init (int ) ;
 int xmlFreeParserCtxt (int * volatile) ;
 int xmlInitParser () ;
 int * xmlNewParserCtxt () ;
 int xml_ereport (TYPE_3__*,int ,int ,char*) ;

__attribute__((used)) static void
XmlTableInitOpaque(TableFuncScanState *state, int natts)
{
 NO_XML_SUPPORT();

}
