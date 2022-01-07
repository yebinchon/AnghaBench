
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {int eml; } ;
typedef TYPE_1__ gbtree_vinfo ;
struct TYPE_6__ {int upper; int lower; } ;
typedef TYPE_2__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;


 scalar_t__ Min (scalar_t__,scalar_t__) ;
 char* VARDATA (int ) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int ) ;
 TYPE_2__ gbt_var_key_readable (int const*) ;
 scalar_t__ pg_mblen (char*) ;

__attribute__((used)) static int32
gbt_var_node_cp_len(const GBT_VARKEY *node, const gbtree_vinfo *tinfo)
{
 GBT_VARKEY_R r = gbt_var_key_readable(node);
 int32 i = 0;
 int32 l = 0;
 int32 t1len = VARSIZE(r.lower) - VARHDRSZ;
 int32 t2len = VARSIZE(r.upper) - VARHDRSZ;
 int32 ml = Min(t1len, t2len);
 char *p1 = VARDATA(r.lower);
 char *p2 = VARDATA(r.upper);

 if (ml == 0)
  return 0;

 while (i < ml)
 {
  if (tinfo->eml > 1 && l == 0)
  {
   if ((l = pg_mblen(p1)) != pg_mblen(p2))
   {
    return i;
   }
  }
  if (*p1 != *p2)
  {
   if (tinfo->eml > 1)
   {
    return (i - l + 1);
   }
   else
   {
    return i;
   }
  }

  p1++;
  p2++;
  l--;
  i++;
 }
 return ml;
}
