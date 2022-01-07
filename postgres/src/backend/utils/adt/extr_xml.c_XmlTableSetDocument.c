
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xmltype ;
typedef TYPE_1__* xmlXPathContextPtr ;
typedef scalar_t__ xmlNodePtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_8__ {TYPE_1__* xpathcxt; int * doc; TYPE_3__* xmlerrcxt; int ctxt; } ;
typedef TYPE_2__ XmlTableBuilderData ;
typedef int TableFuncScanState ;
struct TYPE_9__ {scalar_t__ err_occurred; } ;
struct TYPE_7__ {scalar_t__ node; } ;
typedef int Datum ;


 int * DatumGetXmlP (int ) ;
 int ERRCODE_INVALID_XML_DOCUMENT ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 TYPE_2__* GetXmlTableBuilderPrivateData (int *,char*) ;
 int NO_XML_SUPPORT () ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int * pg_xmlCharStrndup (char*,int) ;
 int strlen (char*) ;
 int * xmlCtxtReadMemory (int ,char*,int,int *,int *,int ) ;
 int xmlFreeDoc (int * volatile) ;
 int xmlXPathFreeContext (TYPE_1__* volatile) ;
 TYPE_1__* xmlXPathNewContext (int * volatile) ;
 int xml_ereport (TYPE_3__*,int ,int ,char*) ;
 char* xml_out_internal (int *,int ) ;

__attribute__((used)) static void
XmlTableSetDocument(TableFuncScanState *state, Datum value)
{
 NO_XML_SUPPORT();

}
