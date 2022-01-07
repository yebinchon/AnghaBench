
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Node ;


 int isQueryUsingTempRelation_walker (int *,int *) ;

bool
isQueryUsingTempRelation(Query *query)
{
 return isQueryUsingTempRelation_walker((Node *) query, ((void*)0));
}
