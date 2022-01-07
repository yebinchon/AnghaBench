
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmltype ;
typedef int * xmlDocPtr ;
typedef int text ;
struct TYPE_3__ {scalar_t__ sqlerrcode; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 TYPE_1__* CopyErrorData () ;
 int CurrentMemoryContext ;
 scalar_t__ ERRCODE_INVALID_XML_DOCUMENT ;
 int FlushErrorState () ;
 int GetDatabaseEncoding () ;
 int MemoryContextSwitchTo (int ) ;
 int NO_XML_SUPPORT () ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int XMLOPTION_DOCUMENT ;
 int xmlFreeDoc (int * volatile) ;
 int * xml_parse (int *,int ,int,int ) ;

bool
xml_is_document(xmltype *arg)
{
 NO_XML_SUPPORT();
 return 0;

}
