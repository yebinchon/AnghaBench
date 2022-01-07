
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 char* PQfname (int *,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
printResultSet(PGresult *res)
{
 int nFields;
 int i,
    j;


 nFields = PQnfields(res);
 for (i = 0; i < nFields; i++)
  printf("%-15s", PQfname(res, i));
 printf("\n\n");


 for (i = 0; i < PQntuples(res); i++)
 {
  for (j = 0; j < nFields; j++)
   printf("%-15s", PQgetvalue(res, i, j));
  printf("\n");
 }
}
