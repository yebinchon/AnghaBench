
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct cvec {int nchrs; int chrspace; int nranges; int rangespace; int cclasscode; TYPE_1__* ranges; TYPE_1__* chrs; } ;
typedef scalar_t__ pg_wchar ;
typedef scalar_t__ (* pg_wc_probefunc ) (scalar_t__) ;
struct TYPE_7__ {scalar_t__ collation; struct cvec cv; struct TYPE_7__* next; scalar_t__ (* probefunc ) (scalar_t__) ;} ;
typedef TYPE_1__ pg_ctype_cache ;
typedef TYPE_1__ chr ;


 int MAX_SIMPLE_CHR ;






 int UCHAR_MAX ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 TYPE_1__* pg_ctype_cache_list ;
 scalar_t__ pg_regex_collation ;
 int pg_regex_strategy ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 int store_match (TYPE_1__*,scalar_t__,int) ;
 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static struct cvec *
pg_ctype_get_cache(pg_wc_probefunc probefunc, int cclasscode)
{
 pg_ctype_cache *pcc;
 pg_wchar max_chr;
 pg_wchar cur_chr;
 int nmatches;
 chr *newchrs;




 for (pcc = pg_ctype_cache_list; pcc != ((void*)0); pcc = pcc->next)
 {
  if (pcc->probefunc == probefunc &&
   pcc->collation == pg_regex_collation)
   return &pcc->cv;
 }




 pcc = (pg_ctype_cache *) malloc(sizeof(pg_ctype_cache));
 if (pcc == ((void*)0))
  return ((void*)0);
 pcc->probefunc = probefunc;
 pcc->collation = pg_regex_collation;
 pcc->cv.nchrs = 0;
 pcc->cv.chrspace = 128;
 pcc->cv.chrs = (chr *) malloc(pcc->cv.chrspace * sizeof(chr));
 pcc->cv.nranges = 0;
 pcc->cv.rangespace = 64;
 pcc->cv.ranges = (chr *) malloc(pcc->cv.rangespace * sizeof(chr) * 2);
 if (pcc->cv.chrs == ((void*)0) || pcc->cv.ranges == ((void*)0))
  goto out_of_memory;
 pcc->cv.cclasscode = cclasscode;
 switch (pg_regex_strategy)
 {
  case 131:




   max_chr = (pg_wchar) MAX_SIMPLE_CHR;

   break;
  case 129:
  case 128:
   max_chr = (pg_wchar) MAX_SIMPLE_CHR;
   break;
  case 133:
  case 132:

   max_chr = (pg_wchar) UCHAR_MAX;
   pcc->cv.cclasscode = -1;



   break;
  case 130:
   max_chr = (pg_wchar) MAX_SIMPLE_CHR;
   break;
  default:
   max_chr = 0;
   break;
 }




 nmatches = 0;

 for (cur_chr = 0; cur_chr <= max_chr; cur_chr++)
 {
  if ((*probefunc) (cur_chr))
   nmatches++;
  else if (nmatches > 0)
  {
   if (!store_match(pcc, cur_chr - nmatches, nmatches))
    goto out_of_memory;
   nmatches = 0;
  }
 }

 if (nmatches > 0)
  if (!store_match(pcc, cur_chr - nmatches, nmatches))
   goto out_of_memory;




 if (pcc->cv.nchrs == 0)
 {
  free(pcc->cv.chrs);
  pcc->cv.chrs = ((void*)0);
  pcc->cv.chrspace = 0;
 }
 else if (pcc->cv.nchrs < pcc->cv.chrspace)
 {
  newchrs = (chr *) realloc(pcc->cv.chrs,
          pcc->cv.nchrs * sizeof(chr));
  if (newchrs == ((void*)0))
   goto out_of_memory;
  pcc->cv.chrs = newchrs;
  pcc->cv.chrspace = pcc->cv.nchrs;
 }
 if (pcc->cv.nranges == 0)
 {
  free(pcc->cv.ranges);
  pcc->cv.ranges = ((void*)0);
  pcc->cv.rangespace = 0;
 }
 else if (pcc->cv.nranges < pcc->cv.rangespace)
 {
  newchrs = (chr *) realloc(pcc->cv.ranges,
          pcc->cv.nranges * sizeof(chr) * 2);
  if (newchrs == ((void*)0))
   goto out_of_memory;
  pcc->cv.ranges = newchrs;
  pcc->cv.rangespace = pcc->cv.nranges;
 }




 pcc->next = pg_ctype_cache_list;
 pg_ctype_cache_list = pcc;

 return &pcc->cv;




out_of_memory:
 if (pcc->cv.chrs)
  free(pcc->cv.chrs);
 if (pcc->cv.ranges)
  free(pcc->cv.ranges);
 free(pcc);

 return ((void*)0);
}
