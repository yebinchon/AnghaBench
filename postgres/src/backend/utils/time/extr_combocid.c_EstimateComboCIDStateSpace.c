
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int ComboCidKeyData ;


 int add_size (int,int ) ;
 int mul_size (int,int ) ;
 int usedComboCids ;

Size
EstimateComboCIDStateSpace(void)
{
 Size size;


 size = sizeof(int);


 size = add_size(size, mul_size(sizeof(ComboCidKeyData), usedComboCids));

 return size;
}
