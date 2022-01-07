
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int PGresult ;


 int PQfnumber (int *,char*) ;
 int PQgetlength (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int ntohl (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
show_binary_results(PGresult *res)
{
 int i,
    j;
 int i_fnum,
    t_fnum,
    b_fnum;


 i_fnum = PQfnumber(res, "i");
 t_fnum = PQfnumber(res, "t");
 b_fnum = PQfnumber(res, "b");

 for (i = 0; i < PQntuples(res); i++)
 {
  char *iptr;
  char *tptr;
  char *bptr;
  int blen;
  int ival;


  iptr = PQgetvalue(res, i, i_fnum);
  tptr = PQgetvalue(res, i, t_fnum);
  bptr = PQgetvalue(res, i, b_fnum);





  ival = ntohl(*((uint32_t *) iptr));
  blen = PQgetlength(res, i, b_fnum);

  printf("tuple %d: got\n", i);
  printf(" i = (%d bytes) %d\n",
      PQgetlength(res, i, i_fnum), ival);
  printf(" t = (%d bytes) '%s'\n",
      PQgetlength(res, i, t_fnum), tptr);
  printf(" b = (%d bytes) ", blen);
  for (j = 0; j < blen; j++)
   printf("\\%03o", bptr[j]);
  printf("\n\n");
 }
}
