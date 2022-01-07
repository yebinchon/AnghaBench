
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
 int * GETARR (TYPE_1__*) ;
 int LPADDING ;
 int RPADDING ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 int TRGMHDRSIZE ;
 int comp_trgm ;
 char* get_wildcard_part (char const*,int,char*,int*,int*) ;
 char* lowerstr_with_len (char*,int) ;
 int * make_trigrams (int *,char*,int,int) ;
 char* palloc (int) ;
 int pfree (char*) ;
 int protect_out_of_mem (int) ;
 int qsort (void*,int,int,int ) ;
 int qunique (int *,int,int,int ) ;
 int strlen (char*) ;

TRGM *
generate_wildcard_trgm(const char *str, int slen)
{
 TRGM *trg;
 char *buf,
      *buf2;
 trgm *tptr;
 int len,
    charlen,
    bytelen;
 const char *eword;

 protect_out_of_mem(slen);

 trg = (TRGM *) palloc(TRGMHDRSIZE + sizeof(trgm) * (slen / 2 + 1) * 3);
 trg->flag = ARRKEY;
 SET_VARSIZE(trg, TRGMHDRSIZE);

 if (slen + LPADDING + RPADDING < 3 || slen == 0)
  return trg;

 tptr = GETARR(trg);


 buf = palloc(sizeof(char) * (slen + 4));




 eword = str;
 while ((eword = get_wildcard_part(eword, slen - (eword - str),
           buf, &bytelen, &charlen)) != ((void*)0))
 {




  buf2 = buf;





  tptr = make_trigrams(tptr, buf2, bytelen, charlen);




 }

 pfree(buf);

 if ((len = tptr - GETARR(trg)) == 0)
  return trg;




 if (len > 1)
 {
  qsort((void *) GETARR(trg), len, sizeof(trgm), comp_trgm);
  len = qunique(GETARR(trg), len, sizeof(trgm), comp_trgm);
 }

 SET_VARSIZE(trg, CALCGTSIZE(ARRKEY, len));

 return trg;
}
