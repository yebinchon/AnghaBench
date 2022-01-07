
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int trgm ;
struct TYPE_5__ {int flag; } ;
typedef TYPE_1__ TRGM ;


 int ARRKEY ;
 int CALCGTSIZE (int ,int) ;
 scalar_t__ GETARR (TYPE_1__*) ;
 int SET_VARSIZE (TYPE_1__*,int ) ;
 scalar_t__ TRGMHDRSIZE ;
 int comp_trgm ;
 int generate_trgm_only (scalar_t__,char*,int,int *) ;
 scalar_t__ palloc (scalar_t__) ;
 int protect_out_of_mem (int) ;
 int qsort (void*,int,int,int ) ;
 int qunique (scalar_t__,int,int,int ) ;

TRGM *
generate_trgm(char *str, int slen)
{
 TRGM *trg;
 int len;

 protect_out_of_mem(slen);

 trg = (TRGM *) palloc(TRGMHDRSIZE + sizeof(trgm) * (slen / 2 + 1) * 3);
 trg->flag = ARRKEY;

 len = generate_trgm_only(GETARR(trg), str, slen, ((void*)0));
 SET_VARSIZE(trg, CALCGTSIZE(ARRKEY, len));

 if (len == 0)
  return trg;




 if (len > 1)
 {
  qsort((void *) GETARR(trg), len, sizeof(trgm), comp_trgm);
  len = qunique(GETARR(trg), len, sizeof(trgm), comp_trgm);
 }

 SET_VARSIZE(trg, CALCGTSIZE(ARRKEY, len));

 return trg;
}
