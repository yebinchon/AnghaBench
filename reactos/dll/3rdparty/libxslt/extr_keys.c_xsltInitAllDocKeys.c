
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylesheetPtr ;
typedef TYPE_4__* xsltKeyTablePtr ;
typedef TYPE_5__* xsltKeyDefPtr ;
struct TYPE_14__ {char* name; char* nameURI; struct TYPE_14__* next; } ;
struct TYPE_13__ {struct TYPE_13__* next; int * nameURI; int * name; } ;
struct TYPE_12__ {scalar_t__ keys; } ;
struct TYPE_11__ {int nbKeys; TYPE_1__* document; TYPE_3__* style; } ;
struct TYPE_10__ {int nbKeysComputed; scalar_t__ keys; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ xmlStrEqual (char*,int *) ;
 int xsltInitDocKeyTable (TYPE_2__*,char*,char*) ;
 TYPE_3__* xsltNextImport (TYPE_3__*) ;

int
xsltInitAllDocKeys(xsltTransformContextPtr ctxt)
{
    xsltStylesheetPtr style;
    xsltKeyDefPtr keyd;
    xsltKeyTablePtr table;

    if (ctxt == ((void*)0))
 return(-1);






    if (ctxt->document->nbKeysComputed == ctxt->nbKeys)
 return(0);





    style = ctxt->style;
    while (style) {
 keyd = (xsltKeyDefPtr) style->keys;
 while (keyd != ((void*)0)) {







     table = (xsltKeyTablePtr) ctxt->document->keys;
     while (table) {
  if (((keyd->nameURI != ((void*)0)) == (table->nameURI != ((void*)0))) &&
      xmlStrEqual(keyd->name, table->name) &&
      xmlStrEqual(keyd->nameURI, table->nameURI))
  {
      break;
  }
  table = table->next;
     }
     if (table == ((void*)0)) {



  xsltInitDocKeyTable(ctxt, keyd->name, keyd->nameURI);
     }
     keyd = keyd->next;
 }
 style = xsltNextImport(style);
    }



    return(0);
}
