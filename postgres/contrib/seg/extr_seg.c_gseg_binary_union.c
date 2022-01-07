
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SEG ;
typedef int Datum ;


 int DirectFunctionCall2 (int ,int ,int ) ;
 int seg_union ;

__attribute__((used)) static Datum
gseg_binary_union(Datum r1, Datum r2, int *sizep)
{
 Datum retval;

 retval = DirectFunctionCall2(seg_union, r1, r2);
 *sizep = sizeof(SEG);

 return retval;
}
