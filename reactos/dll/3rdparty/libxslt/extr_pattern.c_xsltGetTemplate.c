
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef int * xsltTemplatePtr ;
typedef TYPE_3__* xsltStylesheetPtr ;
typedef TYPE_4__* xsltCompMatchPtr ;
typedef TYPE_5__* xmlNodePtr ;
typedef TYPE_6__* xmlDocPtr ;
typedef char xmlChar ;
typedef TYPE_7__* xmlAttrPtr ;
struct TYPE_24__ {int * psvi; } ;
struct TYPE_23__ {int * psvi; } ;
struct TYPE_22__ {int type; char* name; int * psvi; } ;
struct TYPE_21__ {float priority; struct TYPE_21__* next; int * template; } ;
struct TYPE_20__ {TYPE_4__* keyMatch; TYPE_4__* elemMatch; TYPE_4__* commentMatch; TYPE_4__* textMatch; TYPE_4__* rootMatch; TYPE_4__* piMatch; TYPE_4__* attrMatch; int * templatesHash; } ;
struct TYPE_19__ {scalar_t__ nbKeys; TYPE_1__* document; scalar_t__ hasTemplKeyPatterns; int modeURI; int mode; TYPE_3__* style; } ;
struct TYPE_18__ {scalar_t__ nbKeysComputed; } ;
 float XSLT_PAT_NO_PRIORITY ;
 scalar_t__ xmlHashLookup3 (int *,char const*,int ,int ) ;
 int xsltComputeAllKeys (TYPE_2__*,TYPE_5__*) ;
 TYPE_3__* xsltNextImport (TYPE_3__*) ;
 scalar_t__ xsltTestCompMatch (TYPE_2__*,TYPE_4__*,TYPE_5__*,int ,int ) ;

xsltTemplatePtr
xsltGetTemplate(xsltTransformContextPtr ctxt, xmlNodePtr node,
         xsltStylesheetPtr style)
{
    xsltStylesheetPtr curstyle;
    xsltTemplatePtr ret = ((void*)0);
    const xmlChar *name = ((void*)0);
    xsltCompMatchPtr list = ((void*)0);
    float priority;
    int keyed = 0;

    if ((ctxt == ((void*)0)) || (node == ((void*)0)))
 return(((void*)0));

    if (style == ((void*)0)) {
 curstyle = ctxt->style;
    } else {
 curstyle = xsltNextImport(style);
    }

    while ((curstyle != ((void*)0)) && (curstyle != style)) {
 priority = XSLT_PAT_NO_PRIORITY;

 if (curstyle->templatesHash != ((void*)0)) {



     switch (node->type) {
  case 138:
      if (node->name[0] == ' ')
   break;
  case 146:
  case 131:
      name = node->name;
      break;
  case 142:
  case 134:
  case 130:
  case 145:
  case 144:
  case 135:
  case 136:
  case 141:
  case 143:
  case 132:
  case 140:
  case 139:
  case 147:
  case 137:
  case 133:
  case 128:
  case 129:
      break;
  default:
      return(((void*)0));

     }
 }
 if (name != ((void*)0)) {



     list = (xsltCompMatchPtr) xmlHashLookup3(curstyle->templatesHash,
          name, ctxt->mode, ctxt->modeURI);
 } else
     list = ((void*)0);
 while (list != ((void*)0)) {
     if (xsltTestCompMatch(ctxt, list, node,
             ctxt->mode, ctxt->modeURI)) {
  ret = list->template;
  priority = list->priority;
  break;
     }
     list = list->next;
 }
 list = ((void*)0);




 switch (node->type) {
     case 138:
  if (node->name[0] == ' ')
      list = curstyle->rootMatch;
  else
      list = curstyle->elemMatch;
  if (node->psvi != ((void*)0)) keyed = 1;
  break;
     case 146: {
         xmlAttrPtr attr;

  list = curstyle->attrMatch;
  attr = (xmlAttrPtr) node;
  if (attr->psvi != ((void*)0)) keyed = 1;
  break;
     }
     case 131:
  list = curstyle->piMatch;
  if (node->psvi != ((void*)0)) keyed = 1;
  break;
     case 142:
     case 134: {
         xmlDocPtr doc;

  list = curstyle->rootMatch;
  doc = (xmlDocPtr) node;
  if (doc->psvi != ((void*)0)) keyed = 1;
  break;
     }
     case 130:
     case 145:
  list = curstyle->textMatch;
  if (node->psvi != ((void*)0)) keyed = 1;
  break;
     case 144:
  list = curstyle->commentMatch;
  if (node->psvi != ((void*)0)) keyed = 1;
  break;
     case 135:
     case 136:
     case 141:
     case 143:
     case 132:
     case 140:
     case 139:
     case 147:
     case 137:
     case 133:
     case 128:
     case 129:
  break;
     default:
  break;
 }
 while ((list != ((void*)0)) &&
        ((ret == ((void*)0)) || (list->priority > priority))) {
     if (xsltTestCompMatch(ctxt, list, node,
             ctxt->mode, ctxt->modeURI)) {
  ret = list->template;
  priority = list->priority;
  break;
     }
     list = list->next;
 }



 if ((node->type == 142) ||
     (node->type == 134) ||
     (node->type == 130)) {
     list = curstyle->elemMatch;
     while ((list != ((void*)0)) &&
     ((ret == ((void*)0)) || (list->priority > priority))) {
  if (xsltTestCompMatch(ctxt, list, node,
          ctxt->mode, ctxt->modeURI)) {
      ret = list->template;
      priority = list->priority;
      break;
  }
  list = list->next;
     }
 } else if ((node->type == 131) ||
     (node->type == 144)) {
     list = curstyle->elemMatch;
     while ((list != ((void*)0)) &&
     ((ret == ((void*)0)) || (list->priority > priority))) {
  if (xsltTestCompMatch(ctxt, list, node,
          ctxt->mode, ctxt->modeURI)) {
      ret = list->template;
      priority = list->priority;
      break;
  }
  list = list->next;
     }
 }

keyed_match:
 if (keyed) {
     list = curstyle->keyMatch;
     while ((list != ((void*)0)) &&
     ((ret == ((void*)0)) || (list->priority > priority))) {
  if (xsltTestCompMatch(ctxt, list, node,
          ctxt->mode, ctxt->modeURI)) {
      ret = list->template;
      priority = list->priority;
      break;
  }
  list = list->next;
     }
 }
 else if (ctxt->hasTemplKeyPatterns &&
     ((ctxt->document == ((void*)0)) ||
      (ctxt->document->nbKeysComputed < ctxt->nbKeys)))
 {





     if (xsltComputeAllKeys(ctxt, node) == -1)
  goto error;

     switch (node->type) {
  case 138:
      if (node->psvi != ((void*)0)) keyed = 1;
      break;
  case 146:
      if (((xmlAttrPtr) node)->psvi != ((void*)0)) keyed = 1;
      break;
  case 130:
  case 145:
  case 144:
  case 131:
      if (node->psvi != ((void*)0)) keyed = 1;
      break;
  case 142:
  case 134:
      if (((xmlDocPtr) node)->psvi != ((void*)0)) keyed = 1;
      break;
  default:
      break;
     }
     if (keyed)
  goto keyed_match;
 }
 if (ret != ((void*)0))
     return(ret);




 curstyle = xsltNextImport(curstyle);
    }

error:
    return(((void*)0));
}
