
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
struct TYPE_4__ {scalar_t__ match_size_good; int min_input_size; int max_input_size; int match_size_drop; int min_comp_rate; int first_success_by; } ;
typedef TYPE_1__ PGLZ_Strategy ;


 int INT_MAX ;
 int PGLZ_MAX_MATCH ;
 TYPE_1__* PGLZ_strategy_default ;
 int hist_entries ;
 int hist_start ;
 int memset (int ,int ,int) ;
 scalar_t__ pglz_find_match (int ,char const*,char const*,int*,int*,int,int,int) ;
 int pglz_hist_add (int ,int ,int,int,char const*,char const*,int) ;
 int pglz_out_literal (unsigned char*,unsigned char,unsigned char,unsigned char*,char const) ;
 int pglz_out_tag (unsigned char*,unsigned char,unsigned char,unsigned char*,int,int) ;

int32
pglz_compress(const char *source, int32 slen, char *dest,
     const PGLZ_Strategy *strategy)
{
 unsigned char *bp = (unsigned char *) dest;
 unsigned char *bstart = bp;
 int hist_next = 1;
 bool hist_recycle = 0;
 const char *dp = source;
 const char *dend = source + slen;
 unsigned char ctrl_dummy = 0;
 unsigned char *ctrlp = &ctrl_dummy;
 unsigned char ctrlb = 0;
 unsigned char ctrl = 0;
 bool found_match = 0;
 int32 match_len;
 int32 match_off;
 int32 good_match;
 int32 good_drop;
 int32 result_size;
 int32 result_max;
 int32 need_rate;
 int hashsz;
 int mask;




 if (strategy == ((void*)0))
  strategy = PGLZ_strategy_default;





 if (strategy->match_size_good <= 0 ||
  slen < strategy->min_input_size ||
  slen > strategy->max_input_size)
  return -1;




 good_match = strategy->match_size_good;
 if (good_match > PGLZ_MAX_MATCH)
  good_match = PGLZ_MAX_MATCH;
 else if (good_match < 17)
  good_match = 17;

 good_drop = strategy->match_size_drop;
 if (good_drop < 0)
  good_drop = 0;
 else if (good_drop > 100)
  good_drop = 100;

 need_rate = strategy->min_comp_rate;
 if (need_rate < 0)
  need_rate = 0;
 else if (need_rate > 99)
  need_rate = 99;






 if (slen > (INT_MAX / 100))
 {

  result_max = (slen / 100) * (100 - need_rate);
 }
 else
  result_max = (slen * (100 - need_rate)) / 100;







 if (slen < 128)
  hashsz = 512;
 else if (slen < 256)
  hashsz = 1024;
 else if (slen < 512)
  hashsz = 2048;
 else if (slen < 1024)
  hashsz = 4096;
 else
  hashsz = 8192;
 mask = hashsz - 1;





 memset(hist_start, 0, hashsz * sizeof(int16));




 while (dp < dend)
 {







  if (bp - bstart >= result_max)
   return -1;







  if (!found_match && bp - bstart >= strategy->first_success_by)
   return -1;




  if (pglz_find_match(hist_start, dp, dend, &match_len,
       &match_off, good_match, good_drop, mask))
  {




   pglz_out_tag(ctrlp, ctrlb, ctrl, bp, match_len, match_off);
   while (match_len--)
   {
    pglz_hist_add(hist_start, hist_entries,
         hist_next, hist_recycle,
         dp, dend, mask);
    dp++;

   }
   found_match = 1;
  }
  else
  {



   pglz_out_literal(ctrlp, ctrlb, ctrl, bp, *dp);
   pglz_hist_add(hist_start, hist_entries,
        hist_next, hist_recycle,
        dp, dend, mask);
   dp++;

  }
 }





 *ctrlp = ctrlb;
 result_size = bp - bstart;
 if (result_size >= result_max)
  return -1;


 return result_size;
}
