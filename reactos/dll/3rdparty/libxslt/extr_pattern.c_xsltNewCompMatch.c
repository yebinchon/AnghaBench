
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * xsltStepOpPtr ;
typedef int xsltStepOp ;
typedef TYPE_1__* xsltCompMatchPtr ;
typedef int xsltCompMatch ;
struct TYPE_5__ {int maxStep; scalar_t__ direct; int * nsList; scalar_t__ nsNr; int * steps; scalar_t__ nbStep; } ;


 int memset (TYPE_1__*,int ,int) ;
 int xmlFree (TYPE_1__*) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltCompMatchPtr
xsltNewCompMatch(void) {
    xsltCompMatchPtr cur;

    cur = (xsltCompMatchPtr) xmlMalloc(sizeof(xsltCompMatch));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewCompMatch : out of memory error\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltCompMatch));
    cur->maxStep = 10;
    cur->nbStep = 0;
    cur-> steps = (xsltStepOpPtr) xmlMalloc(sizeof(xsltStepOp) *
                                            cur->maxStep);
    if (cur->steps == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewCompMatch : out of memory error\n");
 xmlFree(cur);
 return(((void*)0));
    }
    cur->nsNr = 0;
    cur->nsList = ((void*)0);
    cur->direct = 0;
    return(cur);
}
