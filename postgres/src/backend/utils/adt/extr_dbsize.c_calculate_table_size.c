
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_5__ {TYPE_1__* rd_rel; int rd_backend; int rd_node; } ;
struct TYPE_4__ {int reltoastrelid; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ ForkNumber ;


 scalar_t__ MAX_FORKNUM ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ calculate_relation_size (int *,int ,scalar_t__) ;
 scalar_t__ calculate_toast_table_size (int ) ;

__attribute__((used)) static int64
calculate_table_size(Relation rel)
{
 int64 size = 0;
 ForkNumber forkNum;




 for (forkNum = 0; forkNum <= MAX_FORKNUM; forkNum++)
  size += calculate_relation_size(&(rel->rd_node), rel->rd_backend,
          forkNum);




 if (OidIsValid(rel->rd_rel->reltoastrelid))
  size += calculate_toast_table_size(rel->rd_rel->reltoastrelid);

 return size;
}
