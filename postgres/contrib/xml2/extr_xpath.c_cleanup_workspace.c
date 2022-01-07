
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * doctree; int * ctxt; int * res; } ;
typedef TYPE_1__ xpath_workspace ;


 int xmlFreeDoc (int *) ;
 int xmlXPathFreeContext (int *) ;
 int xmlXPathFreeObject (int *) ;

__attribute__((used)) static void
cleanup_workspace(xpath_workspace *workspace)
{
 if (workspace->res)
  xmlXPathFreeObject(workspace->res);
 workspace->res = ((void*)0);
 if (workspace->ctxt)
  xmlXPathFreeContext(workspace->ctxt);
 workspace->ctxt = ((void*)0);
 if (workspace->doctree)
  xmlFreeDoc(workspace->doctree);
 workspace->doctree = ((void*)0);
}
