
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_6__ {int dict; int errors; } ;


 int XSLT_NAMESPACE ;
 int * xmlDictLookup (int ,int const*,int) ;
 scalar_t__ xmlValidateQName (int const*,int ) ;
 int * xsltGetCNsProp (TYPE_1__*,int ,int const*,int ) ;
 int * xsltGetQNameURI2 (TYPE_1__*,int ,int const**) ;
 int xsltTransformError (int *,TYPE_1__*,int ,char*,int const*,...) ;

__attribute__((used)) static void
xsltGetQNameProperty(xsltStylesheetPtr style, xmlNodePtr inst,
       const xmlChar *propName,
       int mandatory,
       int *hasProp, const xmlChar **nsName,
       const xmlChar** localName)
{
    const xmlChar *prop;

    if (nsName)
 *nsName = ((void*)0);
    if (localName)
 *localName = ((void*)0);
    if (hasProp)
 *hasProp = 0;

    prop = xsltGetCNsProp(style, inst, propName, XSLT_NAMESPACE);
    if (prop == ((void*)0)) {
 if (mandatory) {
     xsltTransformError(((void*)0), style, inst,
  "The attribute '%s' is missing.\n", propName);
     style->errors++;
     return;
 }
    } else {
        const xmlChar *URI;

 if (xmlValidateQName(prop, 0)) {
     xsltTransformError(((void*)0), style, inst,
  "The value '%s' of the attribute "
  "'%s' is not a valid QName.\n", prop, propName);
     style->errors++;
     return;
 } else {



     URI = xsltGetQNameURI2(style, inst, &prop);
     if (prop == ((void*)0)) {
  style->errors++;
     } else {
  if (localName)
      *localName = prop;
  if (hasProp)
      *hasProp = 1;
  if (URI != ((void*)0)) {





      if (nsName)
   *nsName = xmlDictLookup(style->dict, URI, -1);

  }
     }
 }
    }
    return;
}
