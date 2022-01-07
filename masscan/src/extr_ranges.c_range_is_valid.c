
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range {scalar_t__ begin; scalar_t__ end; } ;



int
range_is_valid(struct Range range)
{
    return range.begin <= range.end;
}
