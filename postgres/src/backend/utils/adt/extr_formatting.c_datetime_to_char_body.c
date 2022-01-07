
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
typedef int TmToChar ;
struct TYPE_3__ {char* format; } ;
typedef int Oid ;
typedef char FormatNode ;
typedef TYPE_1__ DCHCacheEntry ;


 int DCH_CACHE_SIZE ;
 int DCH_FLAG ;
 int DCH_MAX_ITEM_SIZ ;
 TYPE_1__* DCH_cache_fetch (char*,int) ;
 int DCH_index ;
 int DCH_keywords ;
 int DCH_suff ;
 int DCH_to_char (char*,int,int *,char*,int ) ;
 int * cstring_to_text (char*) ;
 char* palloc (int) ;
 int parse_format (char*,char*,int ,int ,int ,int ,int *) ;
 int pfree (char*) ;
 int strlen (char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static text *
datetime_to_char_body(TmToChar *tmtc, text *fmt, bool is_interval, Oid collid)
{
 FormatNode *format;
 char *fmt_str,
      *result;
 bool incache;
 int fmt_len;
 text *res;




 fmt_str = text_to_cstring(fmt);
 fmt_len = strlen(fmt_str);




 result = palloc((fmt_len * DCH_MAX_ITEM_SIZ) + 1);
 *result = '\0';

 if (fmt_len > DCH_CACHE_SIZE)
 {




  incache = 0;

  format = (FormatNode *) palloc((fmt_len + 1) * sizeof(FormatNode));

  parse_format(format, fmt_str, DCH_keywords,
      DCH_suff, DCH_index, DCH_FLAG, ((void*)0));
 }
 else
 {



  DCHCacheEntry *ent = DCH_cache_fetch(fmt_str, 0);

  incache = 1;
  format = ent->format;
 }


 DCH_to_char(format, is_interval, tmtc, result, collid);

 if (!incache)
  pfree(format);

 pfree(fmt_str);


 res = cstring_to_text(result);

 pfree(result);
 return res;
}
