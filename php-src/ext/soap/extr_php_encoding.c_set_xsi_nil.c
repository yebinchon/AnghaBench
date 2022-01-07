
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;


 int XSI_NAMESPACE ;
 int set_ns_prop (int ,int ,char*,char*) ;

__attribute__((used)) static void set_xsi_nil(xmlNodePtr node)
{
 set_ns_prop(node, XSI_NAMESPACE, "nil", "true");
}
