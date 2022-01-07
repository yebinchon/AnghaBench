
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;


typedef TYPE_4__* xsltTransformContextPtr ;
typedef TYPE_5__* xmlNodePtr ;
struct TYPE_26__ {scalar_t__ type; scalar_t__ name; int * content; TYPE_3__* doc; TYPE_14__* last; TYPE_2__* ns; int * children; } ;
struct TYPE_25__ {scalar_t__ type; unsigned int lasttsize; unsigned int lasttuse; scalar_t__ dict; int state; int * lasttext; int output; TYPE_1__* style; } ;
struct TYPE_24__ {scalar_t__ dict; } ;
struct TYPE_23__ {int * href; } ;
struct TYPE_22__ {int * cdataSection; } ;
struct TYPE_21__ {scalar_t__ type; scalar_t__ name; } ;


 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 scalar_t__ XSLT_OUTPUT_XML ;
 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_4__*,int ,int ) ;
 int XSLT_TRACE_COPY_TEXT ;
 scalar_t__ xmlDictOwns (scalar_t__,int *) ;
 int * xmlHashLookup2 (int *,scalar_t__,int *) ;
 TYPE_5__* xmlNewCDataBlock (int ,int *,unsigned int) ;
 TYPE_5__* xmlNewTextLen (int *,unsigned int) ;
 int * xmlStrdup (int *) ;
 scalar_t__ xmlStringTextNoenc ;
 unsigned int xmlStrlen (int *) ;
 TYPE_5__* xsltAddChild (TYPE_5__*,TYPE_5__*) ;
 TYPE_5__* xsltAddTextString (TYPE_4__*,TYPE_14__*,int *,unsigned int) ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (TYPE_4__*,int *,TYPE_5__*,char*) ;

__attribute__((used)) static xmlNodePtr
xsltCopyText(xsltTransformContextPtr ctxt, xmlNodePtr target,
      xmlNodePtr cur, int interned)
{
    xmlNodePtr copy;

    if ((cur->type != XML_TEXT_NODE) &&
 (cur->type != XML_CDATA_SECTION_NODE))
 return(((void*)0));
    if (cur->content == ((void*)0))
 return(((void*)0));
    if ((target == ((void*)0)) || (target->children == ((void*)0))) {
 ctxt->lasttext = ((void*)0);
    }

    if ((ctxt->style->cdataSection != ((void*)0)) &&
 (ctxt->type == XSLT_OUTPUT_XML) &&
 (target != ((void*)0)) &&
 (target->type == XML_ELEMENT_NODE) &&
 (((target->ns == ((void*)0)) &&
   (xmlHashLookup2(ctxt->style->cdataSection,
            target->name, ((void*)0)) != ((void*)0))) ||
  ((target->ns != ((void*)0)) &&
   (xmlHashLookup2(ctxt->style->cdataSection,
                   target->name, target->ns->href) != ((void*)0)))))
    {
 if ((target->last != ((void*)0)) &&
      (target->last->type == XML_CDATA_SECTION_NODE))
 {



     copy = xsltAddTextString(ctxt, target->last, cur->content,
  xmlStrlen(cur->content));
     goto exit;
 } else {
     unsigned int len;

     len = xmlStrlen(cur->content);
     copy = xmlNewCDataBlock(ctxt->output, cur->content, len);
     if (copy == ((void*)0))
  goto exit;
     ctxt->lasttext = copy->content;
     ctxt->lasttsize = len;
     ctxt->lasttuse = len;
 }
    } else if ((target != ((void*)0)) &&
 (target->last != ((void*)0)) &&

 (((target->last->type == XML_TEXT_NODE) &&
 (target->last->name == cur->name)) ||

 (((target->last->type == XML_CDATA_SECTION_NODE) &&
 (cur->name == xmlStringTextNoenc)))))
    {



 copy = xsltAddTextString(ctxt, target->last, cur->content,
     xmlStrlen(cur->content));
 goto exit;
    } else if ((interned) && (target != ((void*)0)) &&
 (target->doc != ((void*)0)) &&
 (target->doc->dict == ctxt->dict))
    {



        copy = xmlNewTextLen(((void*)0), 0);
 if (copy == ((void*)0))
     goto exit;
 if (cur->name == xmlStringTextNoenc)
     copy->name = xmlStringTextNoenc;






 if (xmlDictOwns(ctxt->dict, cur->content))
     copy->content = cur->content;
 else {
     if ((copy->content = xmlStrdup(cur->content)) == ((void*)0))
  return ((void*)0);
 }
    } else {




        unsigned int len;

 len = xmlStrlen(cur->content);
 copy = xmlNewTextLen(cur->content, len);
 if (copy == ((void*)0))
     goto exit;
 if (cur->name == xmlStringTextNoenc)
     copy->name = xmlStringTextNoenc;
 ctxt->lasttext = copy->content;
 ctxt->lasttsize = len;
 ctxt->lasttuse = len;
    }
    if (copy != ((void*)0)) {
 if (target != ((void*)0)) {
     copy->doc = target->doc;





     copy = xsltAddChild(target, copy);
 }
    } else {
 xsltTransformError(ctxt, ((void*)0), target,
    "xsltCopyText: text copy failed\n");
    }

exit:
    if ((copy == ((void*)0)) || (copy->content == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), target,
     "Internal error in xsltCopyText(): "
     "Failed to copy the string.\n");
 ctxt->state = XSLT_STATE_STOPPED;
    }
    return(copy);
}
