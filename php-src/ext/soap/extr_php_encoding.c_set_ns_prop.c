
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;


 int BAD_CAST (char*) ;
 int encode_add_ns (int ,char*) ;
 int xmlSetNsProp (int ,int ,int ,int ) ;

__attribute__((used)) static void set_ns_prop(xmlNodePtr node, char *ns, char *name, char *val)
{
 xmlSetNsProp(node, encode_add_ns(node, ns), BAD_CAST(name), BAD_CAST(val));
}
