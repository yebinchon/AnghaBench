
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int text ;
struct TYPE_8__ {int zero_end; int zero_start; int multi; int need_locale; int pre_lsign_num; int post; int pre; int lsign; int flag; } ;
struct TYPE_10__ {TYPE_1__ Num; int * format; } ;
struct TYPE_9__ {int zero_end; int zero_start; int multi; int need_locale; int pre_lsign_num; int post; int pre; int lsign; int flag; } ;
typedef TYPE_2__ NUMDesc ;
typedef TYPE_3__ NUMCacheEntry ;
typedef int FormatNode ;


 int NUM_CACHE_SIZE ;
 int NUM_FLAG ;
 TYPE_3__* NUM_cache_fetch (char*) ;
 int NUM_index ;
 int NUM_keywords ;
 int dump_index (int ,int ) ;
 scalar_t__ palloc (int) ;
 int parse_format (int *,char*,int ,int *,int ,int ,TYPE_2__*) ;
 int pfree (char*) ;
 char* text_to_cstring (int *) ;
 int zeroize_NUM (TYPE_2__*) ;

__attribute__((used)) static FormatNode *
NUM_cache(int len, NUMDesc *Num, text *pars_str, bool *shouldFree)
{
 FormatNode *format = ((void*)0);
 char *str;

 str = text_to_cstring(pars_str);

 if (len > NUM_CACHE_SIZE)
 {




  format = (FormatNode *) palloc((len + 1) * sizeof(FormatNode));

  *shouldFree = 1;

  zeroize_NUM(Num);

  parse_format(format, str, NUM_keywords,
      ((void*)0), NUM_index, NUM_FLAG, Num);
 }
 else
 {



  NUMCacheEntry *ent = NUM_cache_fetch(str);

  *shouldFree = 0;

  format = ent->format;




  Num->flag = ent->Num.flag;
  Num->lsign = ent->Num.lsign;
  Num->pre = ent->Num.pre;
  Num->post = ent->Num.post;
  Num->pre_lsign_num = ent->Num.pre_lsign_num;
  Num->need_locale = ent->Num.need_locale;
  Num->multi = ent->Num.multi;
  Num->zero_start = ent->Num.zero_start;
  Num->zero_end = ent->Num.zero_end;
 }






 pfree(str);
 return format;
}
