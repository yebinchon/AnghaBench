
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct EncStat {scalar_t__ ciph; } ;


 int pgp_cfb_free (scalar_t__) ;
 int px_free (struct EncStat*) ;
 int px_memset (struct EncStat*,int ,int) ;

__attribute__((used)) static void
encrypt_free(void *priv)
{
 struct EncStat *st = priv;

 if (st->ciph)
  pgp_cfb_free(st->ciph);
 px_memset(st, 0, sizeof(*st));
 px_free(st);
}
