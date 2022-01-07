
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* pg_get_constraintdef_worker (int ,int,int ,int) ;

char *
pg_get_constraintdef_command(Oid constraintId)
{
 return pg_get_constraintdef_worker(constraintId, 1, 0, 0);
}
