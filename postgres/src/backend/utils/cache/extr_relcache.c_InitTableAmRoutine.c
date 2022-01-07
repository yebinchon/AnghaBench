
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rd_amhandler; int rd_tableam; } ;
typedef TYPE_1__* Relation ;


 int GetTableAmRoutine (int ) ;

__attribute__((used)) static void
InitTableAmRoutine(Relation relation)
{
 relation->rd_tableam = GetTableAmRoutine(relation->rd_amhandler);
}
