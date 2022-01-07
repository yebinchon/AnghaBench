
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateSubscriptionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int conninfo ;
 int options ;
 int publication ;
 int subname ;

__attribute__((used)) static bool
_equalCreateSubscriptionStmt(const CreateSubscriptionStmt *a,
        const CreateSubscriptionStmt *b)
{
 COMPARE_STRING_FIELD(subname);
 COMPARE_STRING_FIELD(conninfo);
 COMPARE_NODE_FIELD(publication);
 COMPARE_NODE_FIELD(options);

 return 1;
}
