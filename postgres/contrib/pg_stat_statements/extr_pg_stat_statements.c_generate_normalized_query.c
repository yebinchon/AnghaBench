
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int clocations_count; int highest_extern_param_id; TYPE_1__* clocations; } ;
typedef TYPE_2__ pgssJumbleState ;
struct TYPE_5__ {int location; int length; } ;


 int Assert (int) ;
 int fill_in_constant_lengths (TYPE_2__*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static char *
generate_normalized_query(pgssJumbleState *jstate, const char *query,
        int query_loc, int *query_len_p, int encoding)
{
 char *norm_query;
 int query_len = *query_len_p;
 int i,
    norm_query_buflen,
    len_to_wrt,
    quer_loc = 0,
    n_quer_loc = 0,
    last_off = 0,
    last_tok_len = 0;





 fill_in_constant_lengths(jstate, query, query_loc);
 norm_query_buflen = query_len + jstate->clocations_count * 10;


 norm_query = palloc(norm_query_buflen + 1);

 for (i = 0; i < jstate->clocations_count; i++)
 {
  int off,
     tok_len;

  off = jstate->clocations[i].location;

  off -= query_loc;

  tok_len = jstate->clocations[i].length;

  if (tok_len < 0)
   continue;


  len_to_wrt = off - last_off;
  len_to_wrt -= last_tok_len;

  Assert(len_to_wrt >= 0);
  memcpy(norm_query + n_quer_loc, query + quer_loc, len_to_wrt);
  n_quer_loc += len_to_wrt;


  n_quer_loc += sprintf(norm_query + n_quer_loc, "$%d",
         i + 1 + jstate->highest_extern_param_id);

  quer_loc = off + tok_len;
  last_off = off;
  last_tok_len = tok_len;
 }





 len_to_wrt = query_len - quer_loc;

 Assert(len_to_wrt >= 0);
 memcpy(norm_query + n_quer_loc, query + quer_loc, len_to_wrt);
 n_quer_loc += len_to_wrt;

 Assert(n_quer_loc <= norm_query_buflen);
 norm_query[n_quer_loc] = '\0';

 *query_len_p = n_quer_loc;
 return norm_query;
}
