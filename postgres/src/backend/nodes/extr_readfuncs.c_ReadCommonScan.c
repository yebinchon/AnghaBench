
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int plan; } ;
typedef TYPE_1__ Scan ;


 int READ_TEMP_LOCALS () ;
 int READ_UINT_FIELD (int ) ;
 int ReadCommonPlan (int *) ;
 int scanrelid ;

__attribute__((used)) static void
ReadCommonScan(Scan *local_node)
{
 READ_TEMP_LOCALS();

 ReadCommonPlan(&local_node->plan);

 READ_UINT_FIELD(scanrelid);
}
