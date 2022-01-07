
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ QUERYTYPE ;


 scalar_t__ GETQUERY (TYPE_1__*) ;
 int contains_required_value (scalar_t__) ;

bool
query_has_required_values(QUERYTYPE *query)
{
 if (query->size <= 0)
  return 0;
 return contains_required_value(GETQUERY(query) + query->size - 1);
}
