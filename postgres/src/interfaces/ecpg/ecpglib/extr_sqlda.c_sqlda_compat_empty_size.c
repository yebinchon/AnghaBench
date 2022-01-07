
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlvar_compat {int dummy; } ;
struct sqlda_compat {int dummy; } ;
typedef int PGresult ;


 int PQfname (int const*,int) ;
 int PQnfields (int const*) ;
 int ecpg_sqlda_align_add_size (long,int,int ,long*,int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static long
sqlda_compat_empty_size(const PGresult *res)
{
 long offset;
 int i;
 int sqld = PQnfields(res);


 offset = sizeof(struct sqlda_compat) + sqld * sizeof(struct sqlvar_compat);


 for (i = 0; i < sqld; i++)
  offset += strlen(PQfname(res, i)) + 1;


 ecpg_sqlda_align_add_size(offset, sizeof(int), 0, &offset, ((void*)0));

 return offset;
}
