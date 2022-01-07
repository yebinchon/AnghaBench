
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlvar_struct {int dummy; } ;
struct sqlda_struct {int dummy; } ;
typedef int PGresult ;


 int PQnfields (int const*) ;
 int ecpg_sqlda_align_add_size (long,int,int ,long*,int *) ;

__attribute__((used)) static long
sqlda_native_empty_size(const PGresult *res)
{
 long offset;
 int sqld = PQnfields(res);


 offset = sizeof(struct sqlda_struct) + (sqld - 1) * sizeof(struct sqlvar_struct);


 ecpg_sqlda_align_add_size(offset, sizeof(int), 0, &offset, ((void*)0));

 return offset;
}
