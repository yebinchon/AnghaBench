
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef TYPE_3__* xmlXPathObjectPtr ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
typedef int text ;
typedef int int32 ;
struct TYPE_23__ {int row_count; TYPE_7__* xmlerrcxt; TYPE_11__* xpathcxt; int ** xpathscomp; TYPE_2__* xpathobj; } ;
typedef TYPE_4__ XmlTableBuilderData ;
struct TYPE_24__ {int * typioparams; int * in_functions; } ;
typedef TYPE_5__ TableFuncScanState ;
struct TYPE_26__ {scalar_t__ err_occurred; } ;
struct TYPE_25__ {char* data; } ;
struct TYPE_22__ {scalar_t__ type; int floatval; int boolval; scalar_t__ stringval; TYPE_12__* nodesetval; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_1__* nodesetval; } ;
struct TYPE_20__ {int * nodeTab; } ;
struct TYPE_19__ {int nodeNr; int * nodeTab; } ;
struct TYPE_18__ {int node; } ;
typedef TYPE_6__ StringInfoData ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 int Assert (int) ;
 int ERRCODE_CARDINALITY_VIOLATION ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 TYPE_4__* GetXmlTableBuilderPrivateData (TYPE_5__*,char*) ;
 int InputFunctionCall (int *,char*,int ,int ) ;
 int NO_XML_SUPPORT () ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 char TYPCATEGORY_NUMERIC ;
 scalar_t__ XMLOID ;
 scalar_t__ XPATH_BOOLEAN ;
 scalar_t__ XPATH_NODESET ;
 scalar_t__ XPATH_NUMBER ;
 scalar_t__ XPATH_STRING ;
 int appendStringInfoText (TYPE_6__*,int *) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* escape_xml (char*) ;
 int get_type_category_preferred (scalar_t__,char*,int*) ;
 int initStringInfo (TYPE_6__*) ;
 int xmlSetStructuredErrorFunc (void*,int ) ;
 int xmlXPathCastBooleanToNumber (int ) ;
 int * xmlXPathCastBooleanToString (int ) ;
 int * xmlXPathCastNodeSetToString (TYPE_12__*) ;
 int * xmlXPathCastNumberToString (int ) ;
 TYPE_3__* xmlXPathCompiledEval (int *,TYPE_11__*) ;
 int xmlXPathFreeObject (TYPE_3__* volatile) ;
 int xml_ereport (TYPE_7__*,int ,int ,char*) ;
 int xml_errorHandler ;
 char* xml_pstrdup_and_free (int *) ;
 int * xml_xmlnodetoxmltype (int ,TYPE_7__*) ;

__attribute__((used)) static Datum
XmlTableGetValue(TableFuncScanState *state, int colnum,
     Oid typid, int32 typmod, bool *isnull)
{
 NO_XML_SUPPORT();
 return 0;

}
