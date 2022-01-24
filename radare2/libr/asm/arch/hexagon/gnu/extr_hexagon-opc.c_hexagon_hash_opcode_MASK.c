#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char hexagon_hash ;

/* Variables and functions */
 char HEXAGON_HASH_0 ; 
 int /*<<< orphan*/  HEXAGON_HASH_1 ; 
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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 char PACKET_PAIR ; 
 char FUNC3 (char const) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ pif ; 
 scalar_t__ pnew ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 size_t FUNC8 (char const*,char*) ; 
 char* FUNC9 (char const*,char*,size_t) ; 

hexagon_hash
FUNC10
(const char *syntax)
{
  const char *p1, *p2, *pair, *peq;
  size_t token;
  int is_if;
  char ch;

  if (!FUNC7 (syntax, "Rd8 = #s6 ; Re8 = #S6")
      || !FUNC7 (syntax, "Rd8 = #s6 ; Re8 = aslh (Rs8 )"))
    {
      p1 = NULL;
      p2 = p1;
    }

  pair = FUNC6 (syntax, PACKET_PAIR);
  peq  = FUNC6 (syntax, '=');

  token = FUNC8 (syntax, " \t`~!@#$%^&*()_-=+[{]}\\|;:'\",<.>/?"); /* BLANK || PUNCT */
  is_if = !FUNC9 (syntax, "if", token);

#if 0
  if ((p1 = strncmp (syntax, "mem", 3)))
    {
      /* Loads and stores. */
      if (peq)
        /* Conditional and unconditional stores. */
        return (pif? (pnew? HEXAGON_HASH_A: HEXAGON_HASH_B): HEXAGON_HASH_C);
      else
        /* Conditional and unconditional loads. */
        return (pif? (pnew? HEXAGON_HASH_D: HEXAGON_HASH_E): HEXAGON_HASH_F);
    }
#endif

  if (pair)
    {
      p1 = pair + 1;
      while (FUNC2 (*p1))
        p1++;

      if (!FUNC9 (p1, "jump", 4) || !FUNC9 (syntax, "jump", 4)
          || !FUNC9 (p1, "call", 4) || !FUNC9 (syntax, "call", 4)
          || ((FUNC4 () || FUNC5 ())
              && (!FUNC9 (p1, "return", token) || !FUNC9 (syntax, "return", token))))
        /* Conditional and unconditioonal branches. */
        return (is_if? HEXAGON_HASH_G: HEXAGON_HASH_H);
    }
  else
    {
      p1 = syntax;

      if (!FUNC9 (p1, "jump", 4)
          || !FUNC9 (p1, "call", 4)
          || ((FUNC4 () || FUNC5 ())
              && (!FUNC9 (p1, "return", token))))
        /* Conditional and unconditioonal branches. */
        return (is_if? HEXAGON_HASH_I: HEXAGON_HASH_J);
    }

  if (peq)
    {
      /* Assignments. */
      p1 = peq + 1;
      while (FUNC2 (*p1))
        p1++;

      if (*p1 != '#' && (p2 = FUNC6 (p1, '(')))
        {
          /* Operations. */
          while (FUNC2 (*p1) || FUNC1 (*p1))
            p1++;

          if (FUNC0 (ch = FUNC3 (*p1)))
            {
              if (ch == 'v')
                {
                  /* Vector insns use the operation initial instead of the prefix. */
                  ch = FUNC3 (p1 [1]);

                  return (pair
                          ? (HEXAGON_HASH_2 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0)) /* Paired insns. */
                          : (HEXAGON_HASH_4 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0)) /* Vector insns. */ );
                }
              else
                return (pair
                        ? (HEXAGON_HASH_2 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0)) /* Paired insns. */
                        : (HEXAGON_HASH_0 + ch - 'a' + (is_if? HEXAGON_HASH_1: 0)) /* Single insns. */ );
            }
        }
      else
        /* Conditional and unconditional transfers. */
        return (pair
                ? is_if? HEXAGON_HASH_K: HEXAGON_HASH_L
                : is_if? HEXAGON_HASH_M: HEXAGON_HASH_N);
    }

  if (!FUNC9 (syntax, "allocframe", 10)
      || !FUNC9 (syntax, "deallocframe", token)
      || !FUNC9 (syntax, "nop", token))
    return (pair? HEXAGON_HASH_O: HEXAGON_HASH_P);

  /* Miscellanea. */
  return (HEXAGON_HASH_Z);
}