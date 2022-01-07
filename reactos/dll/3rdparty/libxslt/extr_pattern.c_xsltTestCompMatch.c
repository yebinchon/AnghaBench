
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_28__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
struct TYPE_32__ {size_t nbstates; TYPE_28__* states; int * member_2; int member_1; int member_0; } ;
typedef TYPE_3__ xsltStepStates ;
typedef TYPE_4__* xsltStepOpPtr ;
typedef TYPE_5__* xsltCompMatchPtr ;
typedef TYPE_6__* xmlNodeSetPtr ;
typedef TYPE_7__* xmlNodePtr ;
typedef int xmlChar ;
typedef TYPE_8__* xmlAttrPtr ;
struct TYPE_37__ {TYPE_7__* parent; } ;
struct TYPE_36__ {int type; char* name; TYPE_1__* ns; int doc; struct TYPE_36__* parent; } ;
struct TYPE_35__ {int nodeNr; TYPE_7__** nodeTab; } ;
struct TYPE_34__ {int nbStep; int nsNr; int nsList; int direct; TYPE_4__* steps; TYPE_7__* node; int const* modeURI; int const* mode; } ;
struct TYPE_33__ {int op; char* value; char* value2; int value3; } ;
struct TYPE_31__ {TYPE_7__* inst; } ;
struct TYPE_30__ {int step; TYPE_7__* node; } ;
struct TYPE_29__ {char* href; } ;


 int XML_ATTRIBUTE_NODE ;


 int XML_DOCB_DOCUMENT_NODE ;
 int XML_DOCUMENT_NODE ;

 int XML_HTML_DOCUMENT_NODE ;
 int XML_NAMESPACE_DECL ;
 int fprintf (int ,char*,int,char*) ;
 int stderr ;
 int xmlFree (TYPE_28__*) ;
 TYPE_8__* xmlGetID (int ,char*) ;
 int xmlStrEqual (char*,char*) ;
 TYPE_6__* xsltGetKey (TYPE_2__*,char*,int ,char*) ;
 int xsltPatPushState (TYPE_2__*,TYPE_3__*,int,TYPE_7__*) ;
 int xsltTestCompMatchDirect (TYPE_2__*,TYPE_5__*,TYPE_7__*,int ,int ) ;
 int xsltTestPredicateMatch (TYPE_2__*,TYPE_5__*,TYPE_7__*,TYPE_4__*,TYPE_4__*) ;
 int xsltTransformError (TYPE_2__*,int *,TYPE_7__*,char*) ;

__attribute__((used)) static int
xsltTestCompMatch(xsltTransformContextPtr ctxt, xsltCompMatchPtr comp,
           xmlNodePtr matchNode, const xmlChar *mode,
    const xmlChar *modeURI) {
    int i;
    int found = 0;
    xmlNodePtr node = matchNode;
    xmlNodePtr oldInst;
    xsltStepOpPtr step, sel = ((void*)0);
    xsltStepStates states = {0, 0, ((void*)0)};

    if ((comp == ((void*)0)) || (node == ((void*)0)) || (ctxt == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), node,
  "xsltTestCompMatch: null arg\n");
        return(-1);
    }
    if (mode != ((void*)0)) {
 if (comp->mode == ((void*)0))
     return(0);



 if (comp->mode != mode)
     return(0);
    } else {
 if (comp->mode != ((void*)0))
     return(0);
    }
    if (modeURI != ((void*)0)) {
 if (comp->modeURI == ((void*)0))
     return(0);



 if (comp->modeURI != modeURI)
     return(0);
    } else {
 if (comp->modeURI != ((void*)0))
     return(0);
    }


    oldInst = ctxt->inst;
    ctxt->inst = comp->node;

    i = 0;
restart:
    for (;i < comp->nbStep;i++) {
 step = &comp->steps[i];
 if (step->op != 130)
     sel = step;
 switch (step->op) {
            case 137:
  goto found;
            case 129:
  if ((node->type == XML_DOCUMENT_NODE) ||



      (node->type == XML_HTML_DOCUMENT_NODE))
      continue;
  if ((node->type == 145) && (node->name[0] == ' '))
      continue;
  goto rollback;
            case 138:
  if (node->type != 145)
      goto rollback;
  if (step->value == ((void*)0))
      continue;
  if (step->value[0] != node->name[0])
      goto rollback;
  if (!xmlStrEqual(step->value, node->name))
      goto rollback;


  if (node->ns == ((void*)0)) {
      if (step->value2 != ((void*)0))
   goto rollback;
  } else if (node->ns->href != ((void*)0)) {
      if (step->value2 == ((void*)0))
   goto rollback;
      if (!xmlStrEqual(step->value2, node->ns->href))
   goto rollback;
  }
  continue;
            case 140:
  if (node->type != XML_ATTRIBUTE_NODE)
      goto rollback;
  if (step->value != ((void*)0)) {
      if (step->value[0] != node->name[0])
   goto rollback;
      if (!xmlStrEqual(step->value, node->name))
   goto rollback;
  }

  if (node->ns == ((void*)0)) {
      if (step->value2 != ((void*)0))
   goto rollback;
  } else if (step->value2 != ((void*)0)) {
      if (!xmlStrEqual(step->value2, node->ns->href))
   goto rollback;
  }
  continue;
            case 132:
  if ((node->type == XML_DOCUMENT_NODE) ||
      (node->type == XML_HTML_DOCUMENT_NODE) ||



      (node->type == XML_NAMESPACE_DECL))
      goto rollback;
  node = node->parent;
  if (node == ((void*)0))
      goto rollback;
  if (step->value == ((void*)0))
      continue;
  if (step->value[0] != node->name[0])
      goto rollback;
  if (!xmlStrEqual(step->value, node->name))
      goto rollback;

  if (node->ns == ((void*)0)) {
      if (step->value2 != ((void*)0))
   goto rollback;
  } else if (node->ns->href != ((void*)0)) {
      if (step->value2 == ((void*)0))
   goto rollback;
      if (!xmlStrEqual(step->value2, node->ns->href))
   goto rollback;
  }
  continue;
            case 141:

  if (step->value == ((void*)0)) {
      step = &comp->steps[i+1];
      if (step->op == 129)
   goto found;

      if ((step->op != 138) &&
   (step->op != 142) &&
   (step->op != 133) &&
   (step->op != 136) &&
   (step->op != 135))
   goto rollback;
  }
  if (node == ((void*)0))
      goto rollback;
  if ((node->type == XML_DOCUMENT_NODE) ||
      (node->type == XML_HTML_DOCUMENT_NODE) ||



      (node->type == XML_NAMESPACE_DECL))
      goto rollback;
  node = node->parent;
  if ((step->op != 138) && step->op != 142) {
      xsltPatPushState(ctxt, &states, i, node);
      continue;
  }
  i++;
  if (step->value == ((void*)0)) {
      xsltPatPushState(ctxt, &states, i - 1, node);
      continue;
  }
  while (node != ((void*)0)) {
      if ((node->type == 145) &&
   (step->value[0] == node->name[0]) &&
   (xmlStrEqual(step->value, node->name))) {

   if (node->ns == ((void*)0)) {
       if (step->value2 == ((void*)0))
    break;
   } else if (node->ns->href != ((void*)0)) {
       if ((step->value2 != ((void*)0)) &&
           (xmlStrEqual(step->value2, node->ns->href)))
    break;
   }
      }
      node = node->parent;
  }
  if (node == ((void*)0))
      goto rollback;
  xsltPatPushState(ctxt, &states, i - 1, node);
  continue;
            case 136: {

  xmlAttrPtr id;

  if (node->type != 145)
      goto rollback;

  id = xmlGetID(node->doc, step->value);
  if ((id == ((void*)0)) || (id->parent != node))
      goto rollback;
  break;
     }
            case 135: {
  xmlNodeSetPtr list;
  int indx;

  list = xsltGetKey(ctxt, step->value,
             step->value3, step->value2);
  if (list == ((void*)0))
      goto rollback;
  for (indx = 0;indx < list->nodeNr;indx++)
      if (list->nodeTab[indx] == node)
   break;
  if (indx >= list->nodeNr)
      goto rollback;
  break;
     }
            case 133:
  if (node->type != 145)
      goto rollback;
  if (node->ns == ((void*)0)) {
      if (step->value != ((void*)0))
   goto rollback;
  } else if (node->ns->href != ((void*)0)) {
      if (step->value == ((void*)0))
   goto rollback;
      if (!xmlStrEqual(step->value, node->ns->href))
   goto rollback;
  }
  break;
            case 142:
  if (node->type != 145)
      goto rollback;
  break;
     case 130: {







  if (comp->direct) {
      found = xsltTestCompMatchDirect(ctxt, comp, matchNode,
          comp->nsList, comp->nsNr);
                    goto exit;
  }

  if (!xsltTestPredicateMatch(ctxt, comp, node, step, sel))
      goto rollback;

  break;
     }
            case 131:
  if (node->type != 144)
      goto rollback;
  if (step->value != ((void*)0)) {
      if (!xmlStrEqual(step->value, node->name))
   goto rollback;
  }
  break;
            case 139:
  if (node->type != 146)
      goto rollback;
  break;
            case 128:
  if ((node->type != 143) &&
      (node->type != 147))
      goto rollback;
  break;
            case 134:
  switch (node->type) {
      case 145:
      case 147:
      case 144:
      case 146:
      case 143:
   break;
      default:
   goto rollback;
  }
  break;
 }
    }
found:
    found = 1;
exit:
    ctxt->inst = oldInst;
    if (states.states != ((void*)0)) {

 xmlFree(states.states);
    }
    return found;
rollback:

    if (states.states == ((void*)0) || states.nbstates <= 0) {
        found = 0;
 goto exit;
    }
    states.nbstates--;
    i = states.states[states.nbstates].step;
    node = states.states[states.nbstates].node;



    goto restart;
}
