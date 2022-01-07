
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Relation ;


 scalar_t__ calculate_indexes_size (int ) ;
 int calculate_table_size (int ) ;

__attribute__((used)) static int64
calculate_total_relation_size(Relation rel)
{
 int64 size;





 size = calculate_table_size(rel);




 size += calculate_indexes_size(rel);

 return size;
}
