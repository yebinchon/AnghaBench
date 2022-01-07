
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int query; } ;
typedef TYPE_1__ QUERY ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int query_cmp(const QUERY *a, const QUERY *b)
{
    return strcmp(a->query, b->query);
}
