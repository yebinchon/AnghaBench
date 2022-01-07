
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char hexagon_hash ;


 char HEXAGON_HASH_0 ;
 int HEXAGON_HASH_1 ;
 char HEXAGON_HASH_2 ;
 char HEXAGON_HASH_4 ;
 char HEXAGON_HASH_A ;
 char HEXAGON_HASH_B ;
 char HEXAGON_HASH_C ;
 char HEXAGON_HASH_D ;
 char HEXAGON_HASH_E ;
 char HEXAGON_HASH_F ;
 char HEXAGON_HASH_G ;
 char HEXAGON_HASH_H ;
 char HEXAGON_HASH_I ;
 char HEXAGON_HASH_J ;
 char HEXAGON_HASH_K ;
 char HEXAGON_HASH_L ;
 char HEXAGON_HASH_M ;
 char HEXAGON_HASH_N ;
 char HEXAGON_HASH_O ;
 char HEXAGON_HASH_P ;
 char HEXAGON_HASH_Z ;
 scalar_t__ ISALPHA (char) ;
 scalar_t__ ISPUNCT (char const) ;
 scalar_t__ ISSPACE (char const) ;
 char PACKET_PAIR ;
 char TOLOWER (char const) ;
 scalar_t__ hexagon_if_arch_v4 () ;
 scalar_t__ hexagon_if_arch_v5 () ;
 scalar_t__ pif ;
 scalar_t__ pnew ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 size_t strcspn (char const*,char*) ;
 char* strncmp (char const*,char*,size_t) ;

hexagon_hash
hexagon_hash_opcode
(const char *syntax)
{
  const char *p1, *p2, *pair, *peq;
  size_t token;
  int is_if;
  char ch;

  if (!strcmp (syntax, "Rd8 = #s6 ; Re8 = #S6")
      || !strcmp (syntax, "Rd8 = #s6 ; Re8 = aslh (Rs8 )"))
    {
      p1 = ((void*)0);
      p2 = p1;
    }

  pair = strchr (syntax, PACKET_PAIR);
  peq = strchr (syntax, '=');

  token = strcspn (syntax, " \t`~!@#$%^&*()_-=+[{]}\\|;:'\",<.>/?");
  is_if = !strncmp (syntax, "if", token);
  if (pair)
    {
      p1 = pair + 1;
      while (ISSPACE (*p1))
        p1++;

      if (!strncmp (p1, "jump", 4) || !strncmp (syntax, "jump", 4)
          || !strncmp (p1, "call", 4) || !strncmp (syntax, "call", 4)
          || ((hexagon_if_arch_v4 () || hexagon_if_arch_v5 ())
              && (!strncmp (p1, "return", token) || !strncmp (syntax, "return", token))))

        return (is_if? HEXAGON_HASH_G: HEXAGON_HASH_H);
    }
  else
    {
      p1 = syntax;

      if (!strncmp (p1, "jump", 4)
          || !strncmp (p1, "call", 4)
          || ((hexagon_if_arch_v4 () || hexagon_if_arch_v5 ())
              && (!strncmp (p1, "return", token))))

        return (is_if? HEXAGON_HASH_I: HEXAGON_HASH_J);
    }

  if (peq)
    {

      p1 = peq + 1;
      while (ISSPACE (*p1))
        p1++;

      if (*p1 != '#' && (p2 = strchr (p1, '(')))
        {

          while (ISSPACE (*p1) || ISPUNCT (*p1))
            p1++;

          if (ISALPHA (ch = TOLOWER (*p1)))
            {
              if (ch == 'v')
                {

                  ch = TOLOWER (p1 [1]);

                  return (pair
                          ? (HEXAGON_HASH_2 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0))
                          : (HEXAGON_HASH_4 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0)) );
                }
              else
                return (pair
                        ? (HEXAGON_HASH_2 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0))
                        : (HEXAGON_HASH_0 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0)) );
            }
        }
      else

        return (pair
                ? is_if? HEXAGON_HASH_K: HEXAGON_HASH_L
                : is_if? HEXAGON_HASH_M: HEXAGON_HASH_N);
    }

  if (!strncmp (syntax, "allocframe", 10)
      || !strncmp (syntax, "deallocframe", token)
      || !strncmp (syntax, "nop", token))
    return (pair? HEXAGON_HASH_O: HEXAGON_HASH_P);


  return (HEXAGON_HASH_Z);
}
