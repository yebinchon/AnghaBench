
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlXPathObjectPtr ;
typedef int xmlChar ;
typedef int text ;
struct TYPE_3__ {int type; int const* stringval; int nodesetval; } ;


 int NOTICE ;


 int * cstring_to_text (char*) ;
 int elog (int ,char*,int) ;
 int * pgxmlNodeSetToText (int ,int *,int *,int *) ;
 int xmlFree (int *) ;
 int * xmlStrdup (int const*) ;

__attribute__((used)) static text *
pgxml_result_to_text(xmlXPathObjectPtr res,
      xmlChar *toptag,
      xmlChar *septag,
      xmlChar *plainsep)
{
 xmlChar *xpresstr;
 text *xpres;

 if (res == ((void*)0))
  return ((void*)0);

 switch (res->type)
 {
  case 129:
   xpresstr = pgxmlNodeSetToText(res->nodesetval,
            toptag,
            septag, plainsep);
   break;

  case 128:
   xpresstr = xmlStrdup(res->stringval);
   break;

  default:
   elog(NOTICE, "unsupported XQuery result: %d", res->type);
   xpresstr = xmlStrdup((const xmlChar *) "<unsupported/>");
 }


 xpres = cstring_to_text((char *) xpresstr);


 xmlFree(xpresstr);

 return xpres;
}
