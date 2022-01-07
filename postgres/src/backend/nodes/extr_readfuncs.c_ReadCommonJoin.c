
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plan; } ;
typedef TYPE_1__ Join ;


 int JoinType ;
 int READ_BOOL_FIELD (int ) ;
 int READ_ENUM_FIELD (int ,int ) ;
 int READ_NODE_FIELD (int ) ;
 int READ_TEMP_LOCALS () ;
 int ReadCommonPlan (int *) ;
 int inner_unique ;
 int joinqual ;
 int jointype ;

__attribute__((used)) static void
ReadCommonJoin(Join *local_node)
{
 READ_TEMP_LOCALS();

 ReadCommonPlan(&local_node->plan);

 READ_ENUM_FIELD(jointype, JoinType);
 READ_BOOL_FIELD(inner_unique);
 READ_NODE_FIELD(joinqual);
}
