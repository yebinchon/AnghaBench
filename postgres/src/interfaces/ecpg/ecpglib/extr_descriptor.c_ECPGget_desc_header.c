
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int* sqlerrd; } ;
typedef int PGresult ;


 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 struct sqlca_t* ECPGget_sqlca () ;
 int PQnfields (int *) ;
 int ecpg_init_sqlca (struct sqlca_t*) ;
 int ecpg_log (char*,int) ;
 int ecpg_raise (int,int ,int ,int *) ;
 int * ecpg_result_by_descriptor (int,char const*) ;

bool
ECPGget_desc_header(int lineno, const char *desc_name, int *count)
{
 PGresult *ECPGresult;
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_raise(lineno, ECPG_OUT_OF_MEMORY,
       ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return 0;
 }

 ecpg_init_sqlca(sqlca);
 ECPGresult = ecpg_result_by_descriptor(lineno, desc_name);
 if (!ECPGresult)
  return 0;

 *count = PQnfields(ECPGresult);
 sqlca->sqlerrd[2] = 1;
 ecpg_log("ECPGget_desc_header: found %d attributes\n", *count);
 return 1;
}
