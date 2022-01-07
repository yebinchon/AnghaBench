
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTblRef ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int rtindex ;

__attribute__((used)) static bool
_equalRangeTblRef(const RangeTblRef *a, const RangeTblRef *b)
{
 COMPARE_SCALAR_FIELD(rtindex);

 return 1;
}
