
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xsltTemplatePtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
struct TYPE_13__ {scalar_t__ type; struct TYPE_13__* parent; TYPE_3__* nsDef; } ;
struct TYPE_12__ {struct TYPE_12__* next; int * prefix; int * href; } ;
struct TYPE_11__ {int exclPrefixNr; int ** exclPrefixTab; } ;
struct TYPE_10__ {int inheritedNsNr; TYPE_3__** inheritedNs; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int * XSLT_NAMESPACE ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (TYPE_3__**,int) ;
 scalar_t__ xmlStrEqual (int *,int *) ;
 scalar_t__ xsltCheckExtPrefix (TYPE_2__*,int *) ;
 int xsltGenericDebug (int ,char*,int) ;
 int xsltGenericDebugContext ;

__attribute__((used)) static int
xsltGetInheritedNsList(xsltStylesheetPtr style,
                xsltTemplatePtr template,
                xmlNodePtr node)
{
    xmlNsPtr cur;
    xmlNsPtr *ret = ((void*)0);
    int nbns = 0;
    int maxns = 10;
    int i;

    if ((style == ((void*)0)) || (template == ((void*)0)) || (node == ((void*)0)) ||
 (template->inheritedNsNr != 0) || (template->inheritedNs != ((void*)0)))
 return(0);
    while (node != ((void*)0)) {
        if (node->type == XML_ELEMENT_NODE) {
            cur = node->nsDef;
            while (cur != ((void*)0)) {
  if (xmlStrEqual(cur->href, XSLT_NAMESPACE))
      goto skip_ns;

  if ((cur->prefix != ((void*)0)) &&
      (xsltCheckExtPrefix(style, cur->prefix)))
      goto skip_ns;





  for (i = 0;i < style->exclPrefixNr;i++) {
      if (xmlStrEqual(cur->href, style->exclPrefixTab[i]))
   goto skip_ns;
  }
                if (ret == ((void*)0)) {
                    ret =
                        (xmlNsPtr *) xmlMalloc((maxns + 1) *
                                               sizeof(xmlNsPtr));
                    if (ret == ((void*)0)) {
                        xmlGenericError(xmlGenericErrorContext,
                                        "xsltGetInheritedNsList : out of memory!\n");
                        return(0);
                    }
                    ret[nbns] = ((void*)0);
                }



                for (i = 0; i < nbns; i++) {
                    if ((cur->prefix == ret[i]->prefix) ||
                        (xmlStrEqual(cur->prefix, ret[i]->prefix)))
                        break;
                }
                if (i >= nbns) {
                    if (nbns >= maxns) {
                        maxns *= 2;
                        ret = (xmlNsPtr *) xmlRealloc(ret,
                                                      (maxns +
                                                       1) *
                                                      sizeof(xmlNsPtr));
                        if (ret == ((void*)0)) {
                            xmlGenericError(xmlGenericErrorContext,
                                            "xsltGetInheritedNsList : realloc failed!\n");
                            return(0);
                        }
                    }
                    ret[nbns++] = cur;
                    ret[nbns] = ((void*)0);
                }
skip_ns:
                cur = cur->next;
            }
        }
        node = node->parent;
    }
    if (nbns != 0) {




 template->inheritedNsNr = nbns;
 template->inheritedNs = ret;
    }
    return (nbns);
}
