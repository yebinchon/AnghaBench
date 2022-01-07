
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ColumnRef ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int fields ;
 int location ;

__attribute__((used)) static bool
_equalColumnRef(const ColumnRef *a, const ColumnRef *b)
{
 COMPARE_NODE_FIELD(fields);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
