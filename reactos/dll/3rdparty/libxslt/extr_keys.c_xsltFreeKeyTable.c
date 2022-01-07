
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltKeyTablePtr ;
typedef int xsltKeyTable ;
struct TYPE_5__ {int * keys; struct TYPE_5__* nameURI; struct TYPE_5__* name; } ;


 int memset (TYPE_1__*,int,int) ;
 int xmlFree (TYPE_1__*) ;
 int xmlHashFree (int *,int ) ;
 int xsltFreeNodeSetEntry ;

__attribute__((used)) static void
xsltFreeKeyTable(xsltKeyTablePtr keyt) {
    if (keyt == ((void*)0))
 return;
    if (keyt->name != ((void*)0))
 xmlFree(keyt->name);
    if (keyt->nameURI != ((void*)0))
 xmlFree(keyt->nameURI);
    if (keyt->keys != ((void*)0))
 xmlHashFree(keyt->keys, xsltFreeNodeSetEntry);
    memset(keyt, -1, sizeof(xsltKeyTable));
    xmlFree(keyt);
}
