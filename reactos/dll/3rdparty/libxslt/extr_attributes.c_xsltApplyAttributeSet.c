
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylesheetPtr ;
typedef TYPE_4__* xsltAttrSetPtr ;
typedef TYPE_5__* xsltAttrElemPtr ;
typedef TYPE_6__* xmlNsPtr ;
typedef TYPE_7__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
typedef TYPE_8__* xmlAttrPtr ;
struct TYPE_30__ {TYPE_1__* children; } ;
struct TYPE_29__ {scalar_t__ type; int doc; } ;
struct TYPE_28__ {scalar_t__* href; } ;
struct TYPE_27__ {struct TYPE_27__* next; TYPE_13__* attr; } ;
struct TYPE_26__ {TYPE_5__* attrs; } ;
struct TYPE_25__ {int * attributeSets; } ;
struct TYPE_24__ {scalar_t__ debugStatus; TYPE_3__* style; int dict; } ;
struct TYPE_23__ {scalar_t__* content; } ;
struct TYPE_22__ {int psvi; int parent; } ;


 scalar_t__ IS_BLANK (scalar_t__ const) ;
 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XSLT_DEBUG_NONE ;
 scalar_t__* xmlDictLookup (int ,scalar_t__ const*,int) ;
 TYPE_4__* xmlHashLookup2 (int *,scalar_t__ const*,scalar_t__ const*) ;
 TYPE_6__* xmlSearchNs (int ,TYPE_7__*,scalar_t__ const*) ;
 scalar_t__ xmlValidateQName (scalar_t__ const*,int ) ;
 int xslHandleDebugger (int ,TYPE_7__*,int *,TYPE_2__*) ;
 int xsltAttribute (TYPE_2__*,TYPE_7__*,TYPE_13__*,int ) ;
 int xsltGenericDebug (int ,char*,scalar_t__ const*) ;
 int xsltGenericDebugContext ;
 scalar_t__* xsltSplitQName (int ,scalar_t__ const*,scalar_t__ const**) ;
 int xsltTransformError (TYPE_2__*,int *,TYPE_7__*,char*,scalar_t__ const*,...) ;

void
xsltApplyAttributeSet(xsltTransformContextPtr ctxt, xmlNodePtr node,
                      xmlNodePtr inst,
                      const xmlChar *attrSets)
{
    const xmlChar *ncname = ((void*)0);
    const xmlChar *prefix = ((void*)0);
    const xmlChar *curstr, *endstr;
    xsltAttrSetPtr set;
    xsltStylesheetPtr style;

    if (attrSets == ((void*)0)) {
 if (inst == ((void*)0))
     return;
 else {



     if (inst->type == XML_ATTRIBUTE_NODE) {
  if ( ((xmlAttrPtr) inst)->children != ((void*)0))
      attrSets = ((xmlAttrPtr) inst)->children->content;

     }
     if (attrSets == ((void*)0)) {



  return;
     }
 }
    }



    curstr = attrSets;
    while (*curstr != 0) {
        while (IS_BLANK(*curstr))
            curstr++;
        if (*curstr == 0)
            break;
        endstr = curstr;
        while ((*endstr != 0) && (!IS_BLANK(*endstr)))
            endstr++;
        curstr = xmlDictLookup(ctxt->dict, curstr, endstr - curstr);
        if (curstr) {
            xmlNsPtr ns;
            const xmlChar *nsUri = ((void*)0);






            if (xmlValidateQName(curstr, 0)) {
                xsltTransformError(ctxt, ((void*)0), inst,
                    "The name '%s' in use-attribute-sets is not a valid "
                    "QName.\n", curstr);
                return;
            }

            ncname = xsltSplitQName(ctxt->dict, curstr, &prefix);
            if (prefix != ((void*)0)) {
         ns = xmlSearchNs(inst->doc, inst, prefix);
                if (ns == ((void*)0)) {
                    xsltTransformError(ctxt, ((void*)0), inst,
                        "use-attribute-set : No namespace found for QName "
                        "'%s:%s'\n", prefix, ncname);
                    return;
                }
                nsUri = ns->href;
            }

            style = ctxt->style;
            set = xmlHashLookup2(style->attributeSets, ncname, nsUri);
            if (set != ((void*)0)) {
                xsltAttrElemPtr cur = set->attrs;
                while (cur != ((void*)0)) {
                    if (cur->attr != ((void*)0)) {
                        xsltAttribute(ctxt, node, cur->attr,
                            cur->attr->psvi);
                    }
                    cur = cur->next;
                }
            }
        }
        curstr = endstr;
    }
}
