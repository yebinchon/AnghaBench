
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef int * xsltCompMatchPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__* ns; int name; } ;
struct TYPE_6__ {int href; } ;


 scalar_t__ XML_NAMESPACE_DECL ;
 int xmlStrEqual (int ,int ) ;
 int xsltTestCompMatchList (int ,TYPE_2__*,int *) ;

__attribute__((used)) static int
xsltTestCompMatchCount(xsltTransformContextPtr context,
                       xmlNodePtr node,
                       xsltCompMatchPtr countPat,
                       xmlNodePtr cur)
{
    if (countPat != ((void*)0)) {
        return xsltTestCompMatchList(context, node, countPat);
    }
    else {
        if (node->type != cur->type)
            return 0;
        if (node->type == XML_NAMESPACE_DECL)




            return 1;

        if (!xmlStrEqual(node->name, cur->name))
            return 0;
        if (node->ns == cur->ns)
            return 1;
        if ((node->ns == ((void*)0)) || (cur->ns == ((void*)0)))
            return 0;
        return (xmlStrEqual(node->ns->href, cur->ns->href));
    }
}
