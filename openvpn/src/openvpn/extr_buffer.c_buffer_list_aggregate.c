
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {int dummy; } ;


 int buffer_list_aggregate_separator (struct buffer_list*,size_t const,char*) ;

void
buffer_list_aggregate(struct buffer_list *bl, const size_t max)
{
    buffer_list_aggregate_separator(bl, max, "");
}
