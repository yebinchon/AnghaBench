
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range6List {int dummy; } ;
struct Range6 {int end; int begin; } ;


 int range6list_remove_range (struct Range6List*,int ,int ) ;

void
range6list_remove_range2(struct Range6List *targets, struct Range6 range)
{
    range6list_remove_range(targets, range.begin, range.end);
}
