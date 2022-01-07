
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int GlobalTransactionData ;
typedef int GlobalTransaction ;


 int MAXALIGN (int ) ;
 int TwoPhaseStateData ;
 int add_size (int ,int ) ;
 int max_prepared_xacts ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;
 int prepXacts ;

Size
TwoPhaseShmemSize(void)
{
 Size size;


 size = offsetof(TwoPhaseStateData, prepXacts);
 size = add_size(size, mul_size(max_prepared_xacts,
           sizeof(GlobalTransaction)));
 size = MAXALIGN(size);
 size = add_size(size, mul_size(max_prepared_xacts,
           sizeof(GlobalTransactionData)));

 return size;
}
