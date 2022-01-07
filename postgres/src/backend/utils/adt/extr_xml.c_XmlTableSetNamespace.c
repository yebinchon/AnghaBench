
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xmlerrcxt; int xpathcxt; } ;
typedef TYPE_1__ XmlTableBuilderData ;
typedef int TableFuncScanState ;


 int ERRCODE_DATA_EXCEPTION ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 TYPE_1__* GetXmlTableBuilderPrivateData (int *,char*) ;
 int NO_XML_SUPPORT () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_xmlCharStrndup (char const*,int ) ;
 int strlen (char const*) ;
 scalar_t__ xmlXPathRegisterNs (int ,int ,int ) ;
 int xml_ereport (int ,int ,int ,char*) ;

__attribute__((used)) static void
XmlTableSetNamespace(TableFuncScanState *state, const char *name, const char *uri)
{
 NO_XML_SUPPORT();

}
