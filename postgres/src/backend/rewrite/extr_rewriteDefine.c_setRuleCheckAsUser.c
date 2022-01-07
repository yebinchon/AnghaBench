
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;


 int setRuleCheckAsUser_walker (int *,int *) ;

void
setRuleCheckAsUser(Node *node, Oid userid)
{
 (void) setRuleCheckAsUser_walker(node, &userid);
}
