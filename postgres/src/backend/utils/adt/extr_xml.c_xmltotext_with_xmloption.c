
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmltype ;
typedef int text ;
typedef scalar_t__ XmlOptionType ;


 int ERRCODE_NOT_AN_XML_DOCUMENT ;
 int ERROR ;
 scalar_t__ XMLOPTION_DOCUMENT ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int xml_is_document (int *) ;

text *
xmltotext_with_xmloption(xmltype *data, XmlOptionType xmloption_arg)
{
 if (xmloption_arg == XMLOPTION_DOCUMENT && !xml_is_document(data))
  ereport(ERROR,
    (errcode(ERRCODE_NOT_AN_XML_DOCUMENT),
     errmsg("not an XML document")));


 return (text *) data;
}
