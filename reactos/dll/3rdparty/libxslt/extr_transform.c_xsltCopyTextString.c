
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_23__ {scalar_t__ type; int * content; TYPE_12__* last; scalar_t__ name; TYPE_2__* ns; int * children; } ;
struct TYPE_22__ {scalar_t__ type; int lasttsize; int lasttuse; int * lasttext; int output; TYPE_1__* style; } ;
struct TYPE_21__ {int * href; } ;
struct TYPE_20__ {int * cdataSection; } ;
struct TYPE_19__ {scalar_t__ type; scalar_t__ name; } ;


 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 scalar_t__ XSLT_OUTPUT_XML ;
 int XSLT_TRACE (TYPE_3__*,int ,int ) ;
 int XSLT_TRACE_COPY_TEXT ;
 int * xmlHashLookup2 (int *,scalar_t__,int *) ;
 TYPE_4__* xmlNewCDataBlock (int ,int const*,int) ;
 TYPE_4__* xmlNewTextLen (int const*,int) ;
 scalar_t__ xmlStringText ;
 scalar_t__ xmlStringTextNoenc ;
 int xmlStrlen (int const*) ;
 TYPE_4__* xsltAddChild (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* xsltAddTextString (TYPE_3__*,TYPE_12__*,int const*,int) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (TYPE_3__*,int *,TYPE_4__*,char*) ;

xmlNodePtr
xsltCopyTextString(xsltTransformContextPtr ctxt, xmlNodePtr target,
            const xmlChar *string, int noescape)
{
    xmlNodePtr copy;
    int len;

    if (string == ((void*)0))
 return(((void*)0));
    if ((target == ((void*)0)) || (target->children == ((void*)0))) {
 ctxt->lasttext = ((void*)0);
    }


    len = xmlStrlen(string);
    if ((ctxt->type == XSLT_OUTPUT_XML) &&
 (ctxt->style->cdataSection != ((void*)0)) &&
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
     return(xsltAddTextString(ctxt, target->last, string, len));
 }
 copy = xmlNewCDataBlock(ctxt->output, string, len);
    } else if (noescape) {



 if ((target != ((void*)0)) && (target->last != ((void*)0)) &&
     (target->last->type == XML_TEXT_NODE) &&
     (target->last->name == xmlStringTextNoenc))
 {
     return(xsltAddTextString(ctxt, target->last, string, len));
 }
 copy = xmlNewTextLen(string, len);
 if (copy != ((void*)0))
     copy->name = xmlStringTextNoenc;
    } else {



 if ((target != ((void*)0)) && (target->last != ((void*)0)) &&
     (target->last->type == XML_TEXT_NODE) &&
     (target->last->name == xmlStringText)) {
     return(xsltAddTextString(ctxt, target->last, string, len));
 }
 copy = xmlNewTextLen(string, len);
    }
    if (copy != ((void*)0) && target != ((void*)0))
 copy = xsltAddChild(target, copy);
    if (copy != ((void*)0)) {
 ctxt->lasttext = copy->content;
 ctxt->lasttsize = len;
 ctxt->lasttuse = len;
    } else {
 xsltTransformError(ctxt, ((void*)0), target,
    "xsltCopyTextString: text copy failed\n");
 ctxt->lasttext = ((void*)0);
    }
    return(copy);
}
