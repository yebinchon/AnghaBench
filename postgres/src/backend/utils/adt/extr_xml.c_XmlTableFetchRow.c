
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* xpathobj; scalar_t__ row_count; TYPE_3__* xmlerrcxt; int xpathcxt; int xpathcomp; } ;
typedef TYPE_2__ XmlTableBuilderData ;
typedef int TableFuncScanState ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__* nodesetval; } ;
struct TYPE_8__ {scalar_t__ err_occurred; } ;
struct TYPE_6__ {scalar_t__ nodeNr; } ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 TYPE_2__* GetXmlTableBuilderPrivateData (int *,char*) ;
 int NO_XML_SUPPORT () ;
 scalar_t__ XPATH_NODESET ;
 int xmlSetStructuredErrorFunc (void*,int ) ;
 TYPE_4__* xmlXPathCompiledEval (int ,int ) ;
 int xml_ereport (TYPE_3__*,int ,int ,char*) ;
 int xml_errorHandler ;

__attribute__((used)) static bool
XmlTableFetchRow(TableFuncScanState *state)
{
 NO_XML_SUPPORT();
 return 0;

}
