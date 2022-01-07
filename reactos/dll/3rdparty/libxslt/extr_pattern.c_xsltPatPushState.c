
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
struct TYPE_12__ {int maxstates; int nbstates; TYPE_3__* states; } ;
typedef TYPE_2__ xsltStepStates ;
typedef TYPE_3__* xsltStepStatePtr ;
struct TYPE_13__ {int step; TYPE_5__* node; } ;
typedef TYPE_3__ xsltStepState ;
typedef TYPE_5__* xmlNodePtr ;
struct TYPE_14__ {char* name; } ;
struct TYPE_11__ {int state; } ;


 int XSLT_STATE_STOPPED ;
 int fprintf (int ,char*,int,char*) ;
 int stderr ;
 TYPE_3__* xmlMalloc (int) ;
 scalar_t__ xmlRealloc (TYPE_3__*,int) ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;

__attribute__((used)) static int
xsltPatPushState(xsltTransformContextPtr ctxt, xsltStepStates *states,
                 int step, xmlNodePtr node) {
    if ((states->states == ((void*)0)) || (states->maxstates <= 0)) {
        states->maxstates = 4;
 states->nbstates = 0;
 states->states = xmlMalloc(4 * sizeof(xsltStepState));
    }
    else if (states->maxstates <= states->nbstates) {
        xsltStepState *tmp;

 tmp = (xsltStepStatePtr) xmlRealloc(states->states,
          2 * states->maxstates * sizeof(xsltStepState));
 if (tmp == ((void*)0)) {
     xsltGenericError(xsltGenericErrorContext,
      "xsltPatPushState: memory re-allocation failure.\n");
     ctxt->state = XSLT_STATE_STOPPED;
     return(-1);
 }
 states->states = tmp;
 states->maxstates *= 2;
    }
    states->states[states->nbstates].step = step;
    states->states[states->nbstates++].node = node;



    return(0);
}
