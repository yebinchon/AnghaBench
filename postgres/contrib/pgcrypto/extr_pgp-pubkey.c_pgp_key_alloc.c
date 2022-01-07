
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGP_PubKey ;


 int memset (int *,int ,int) ;
 int * px_alloc (int) ;

int
pgp_key_alloc(PGP_PubKey **pk_p)
{
 PGP_PubKey *pk;

 pk = px_alloc(sizeof(*pk));
 memset(pk, 0, sizeof(*pk));
 *pk_p = pk;
 return 0;
}
