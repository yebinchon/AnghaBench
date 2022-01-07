
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generator {int def_rounds; int min_rounds; int max_rounds; char* (* gen ) (int,char*,int ,char*,int ) ;int input_len; int * name; } ;
typedef int rbuf ;


 int PXE_BAD_SALT_ROUNDS ;
 int PXE_NO_RANDOM ;
 int PXE_UNKNOWN_SALT_ALGO ;
 int PX_MAX_SALT_LEN ;
 struct generator* gen_list ;
 scalar_t__ pg_strcasecmp (int *,char const*) ;
 int pg_strong_random (char*,int ) ;
 int px_memset (char*,int ,int) ;
 int strlen (char*) ;
 char* stub1 (int,char*,int ,char*,int ) ;

int
px_gen_salt(const char *salt_type, char *buf, int rounds)
{
 struct generator *g;
 char *p;
 char rbuf[16];

 for (g = gen_list; g->name; g++)
  if (pg_strcasecmp(g->name, salt_type) == 0)
   break;

 if (g->name == ((void*)0))
  return PXE_UNKNOWN_SALT_ALGO;

 if (g->def_rounds)
 {
  if (rounds == 0)
   rounds = g->def_rounds;

  if (rounds < g->min_rounds || rounds > g->max_rounds)
   return PXE_BAD_SALT_ROUNDS;
 }

 if (!pg_strong_random(rbuf, g->input_len))
  return PXE_NO_RANDOM;

 p = g->gen(rounds, rbuf, g->input_len, buf, PX_MAX_SALT_LEN);
 px_memset(rbuf, 0, sizeof(rbuf));

 if (p == ((void*)0))
  return PXE_BAD_SALT_ROUNDS;

 return strlen(p);
}
