
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlChar ;
struct TYPE_4__ {TYPE_2__* xmlerrcxt; int ** xpathscomp; } ;
typedef TYPE_1__ XmlTableBuilderData ;
typedef int TableFuncScanState ;
struct TYPE_5__ {scalar_t__ err_occurred; } ;


 int AssertArg (int ) ;
 int ERRCODE_DATA_EXCEPTION ;
 int ERROR ;
 TYPE_1__* GetXmlTableBuilderPrivateData (int *,char*) ;
 int NO_XML_SUPPORT () ;
 int PointerIsValid (char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * pg_xmlCharStrndup (char const*,int ) ;
 int strlen (char const*) ;
 int * xmlXPathCompile (int *) ;
 int xml_ereport (TYPE_2__*,int ,int ,char*) ;

__attribute__((used)) static void
XmlTableSetColumnFilter(TableFuncScanState *state, const char *path, int colnum)
{
 NO_XML_SUPPORT();

}
