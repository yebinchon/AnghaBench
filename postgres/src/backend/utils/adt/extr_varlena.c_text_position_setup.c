
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int text ;
typedef TYPE_1__* pg_locale_t ;
struct TYPE_6__ {int is_multibyte; int is_multibyte_char_in_char; char* str2; int len1; int len2; int skiptablemask; int* skiptable; scalar_t__ refpos; void* str1; void* refpoint; int * last_match; } ;
typedef TYPE_2__ TextPositionState ;
struct TYPE_5__ {int deterministic; } ;
typedef scalar_t__ Oid ;


 int Assert (int) ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ PG_UTF8 ;
 void* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int check_collation_set (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int lc_collate_is_c (scalar_t__) ;
 int pg_database_encoding_max_length () ;
 TYPE_1__* pg_newlocale_from_collation (scalar_t__) ;

__attribute__((used)) static void
text_position_setup(text *t1, text *t2, Oid collid, TextPositionState *state)
{
 int len1 = VARSIZE_ANY_EXHDR(t1);
 int len2 = VARSIZE_ANY_EXHDR(t2);
 pg_locale_t mylocale = 0;

 check_collation_set(collid);

 if (!lc_collate_is_c(collid) && collid != DEFAULT_COLLATION_OID)
  mylocale = pg_newlocale_from_collation(collid);

 if (mylocale && !mylocale->deterministic)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("nondeterministic collations are not supported for substring searches")));

 Assert(len1 > 0);
 Assert(len2 > 0);
 if (pg_database_encoding_max_length() == 1)
 {
  state->is_multibyte = 0;
  state->is_multibyte_char_in_char = 0;
 }
 else if (GetDatabaseEncoding() == PG_UTF8)
 {
  state->is_multibyte = 1;
  state->is_multibyte_char_in_char = 0;
 }
 else
 {
  state->is_multibyte = 1;
  state->is_multibyte_char_in_char = 1;
 }

 state->str1 = VARDATA_ANY(t1);
 state->str2 = VARDATA_ANY(t2);
 state->len1 = len1;
 state->len2 = len2;
 state->last_match = ((void*)0);
 state->refpoint = state->str1;
 state->refpos = 0;
 if (len1 >= len2 && len2 > 1)
 {
  int searchlength = len1 - len2;
  int skiptablemask;
  int last;
  int i;
  const char *str2 = state->str2;
  if (searchlength < 16)
   skiptablemask = 3;
  else if (searchlength < 64)
   skiptablemask = 7;
  else if (searchlength < 128)
   skiptablemask = 15;
  else if (searchlength < 512)
   skiptablemask = 31;
  else if (searchlength < 2048)
   skiptablemask = 63;
  else if (searchlength < 4096)
   skiptablemask = 127;
  else
   skiptablemask = 255;
  state->skiptablemask = skiptablemask;






  for (i = 0; i <= skiptablemask; i++)
   state->skiptable[i] = len2;
  last = len2 - 1;

  for (i = 0; i < last; i++)
   state->skiptable[(unsigned char) str2[i] & skiptablemask] = last - i;
 }
}
