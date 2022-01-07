
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_bool ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef TYPE_3__* xmlDocPtr ;
struct TYPE_11__ {int * URL; } ;
struct TYPE_10__ {TYPE_3__* myDoc; int * directory; scalar_t__ wellFormed; int options; TYPE_1__* sax; } ;
struct TYPE_9__ {int * error; int * warning; int comment; int ignorableWhitespace; } ;


 int XML_PARSE_HUGE ;
 int php_libxml_disable_entity_loader (int) ;
 int soap_Comment ;
 int soap_ignorableWhitespace ;
 int * xmlCharStrdup (int *) ;
 TYPE_2__* xmlCreateMemoryParserCtxt (void const*,size_t) ;
 int xmlFreeDoc (TYPE_3__*) ;
 int xmlFreeParserCtxt (TYPE_2__*) ;
 int xmlParseDocument (TYPE_2__*) ;

xmlDocPtr soap_xmlParseMemory(const void *buf, size_t buf_size)
{
 xmlParserCtxtPtr ctxt = ((void*)0);
 xmlDocPtr ret;





 ctxt = xmlCreateMemoryParserCtxt(buf, buf_size);
 if (ctxt) {
  zend_bool old;

  ctxt->sax->ignorableWhitespace = soap_ignorableWhitespace;
  ctxt->sax->comment = soap_Comment;
  ctxt->sax->warning = ((void*)0);
  ctxt->sax->error = ((void*)0);

  ctxt->options |= XML_PARSE_HUGE;
  old = php_libxml_disable_entity_loader(1);
  xmlParseDocument(ctxt);
  php_libxml_disable_entity_loader(old);
  if (ctxt->wellFormed) {
   ret = ctxt->myDoc;
   if (ret->URL == ((void*)0) && ctxt->directory != ((void*)0)) {
    ret->URL = xmlCharStrdup(ctxt->directory);
   }
  } else {
   ret = ((void*)0);
   xmlFreeDoc(ctxt->myDoc);
   ctxt->myDoc = ((void*)0);
  }
  xmlFreeParserCtxt(ctxt);
 } else {
  ret = ((void*)0);
 }
 return ret;
}
