
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltKeyTablePtr ;
typedef int * xmlNodeSetPtr ;
typedef int xmlChar ;
struct TYPE_9__ {struct TYPE_9__* next; int keys; int * nameURI; int * name; } ;
struct TYPE_8__ {scalar_t__ nbKeys; scalar_t__ keyInitLevel; TYPE_1__* document; } ;
struct TYPE_7__ {scalar_t__ nbKeysComputed; scalar_t__ keys; } ;


 scalar_t__ xmlHashLookup (int ,int const*) ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 int xsltGenericDebug (int ,char*,int const*,int const*) ;
 int xsltGenericDebugContext ;
 scalar_t__ xsltInitAllDocKeys (TYPE_2__*) ;
 int xsltInitDocKeyTable (TYPE_2__*,int const*,int const*) ;

xmlNodeSetPtr
xsltGetKey(xsltTransformContextPtr ctxt, const xmlChar *name,
    const xmlChar *nameURI, const xmlChar *value) {
    xmlNodeSetPtr ret;
    xsltKeyTablePtr table;
    int init_table = 0;

    if ((ctxt == ((void*)0)) || (name == ((void*)0)) || (value == ((void*)0)) ||
 (ctxt->document == ((void*)0)))
 return(((void*)0));
    if ((ctxt->document->nbKeysComputed < ctxt->nbKeys) &&
        (ctxt->keyInitLevel == 0)) {



 if (xsltInitAllDocKeys(ctxt))
     return(((void*)0));
    }

retry:
    table = (xsltKeyTablePtr) ctxt->document->keys;
    while (table != ((void*)0)) {
 if (((nameURI != ((void*)0)) == (table->nameURI != ((void*)0))) &&
     xmlStrEqual(table->name, name) &&
     xmlStrEqual(table->nameURI, nameURI))
 {
     ret = (xmlNodeSetPtr)xmlHashLookup(table->keys, value);
     return(ret);
 }
 table = table->next;
    }

    if ((ctxt->keyInitLevel != 0) && (init_table == 0)) {




        xsltInitDocKeyTable(ctxt, name, nameURI);
 init_table = 1;
 goto retry;
    }

    return(((void*)0));
}
