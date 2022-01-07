
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;


 int relation_close (int ,int ) ;

void
table_close(Relation relation, LOCKMODE lockmode)
{
 relation_close(relation, lockmode);
}
