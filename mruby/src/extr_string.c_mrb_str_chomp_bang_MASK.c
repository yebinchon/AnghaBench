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
struct RString {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct RString*) ; 
 char* FUNC3 (struct RString*) ; 
 int /*<<< orphan*/  FUNC4 (struct RString*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__*,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RString*) ; 
 struct RString* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value str)
{
  mrb_value rs;
  mrb_int newline;
  char *p, *pp;
  mrb_int rslen;
  mrb_int len;
  mrb_int argc;
  struct RString *s = FUNC10(str);

  argc = FUNC6(mrb, "|S", &rs);
  FUNC9(mrb, s);
  len = FUNC2(s);
  if (argc == 0) {
    if (len == 0) return FUNC8();
  smart_chomp:
    if (FUNC3(s)[len-1] == '\n') {
      FUNC4(s, FUNC2(s) - 1);
      if (FUNC2(s) > 0 &&
          FUNC3(s)[FUNC2(s)-1] == '\r') {
        FUNC4(s, FUNC2(s) - 1);
      }
    }
    else if (FUNC3(s)[len-1] == '\r') {
      FUNC4(s, FUNC2(s) - 1);
    }
    else {
      return FUNC8();
    }
    FUNC3(s)[FUNC2(s)] = '\0';
    return str;
  }

  if (len == 0 || FUNC7(rs)) return FUNC8();
  p = FUNC3(s);
  rslen = FUNC0(rs);
  if (rslen == 0) {
    while (len>0 && p[len-1] == '\n') {
      len--;
      if (len>0 && p[len-1] == '\r')
        len--;
    }
    if (len < FUNC2(s)) {
      FUNC4(s, len);
      p[len] = '\0';
      return str;
    }
    return FUNC8();
  }
  if (rslen > len) return FUNC8();
  newline = FUNC1(rs)[rslen-1];
  if (rslen == 1 && newline == '\n')
    newline = FUNC1(rs)[rslen-1];
  if (rslen == 1 && newline == '\n')
    goto smart_chomp;

  pp = p + len - rslen;
  if (p[len-1] == newline &&
     (rslen <= 1 ||
     FUNC5(FUNC1(rs), pp, rslen) == 0)) {
    FUNC4(s, len - rslen);
    p[FUNC2(s)] = '\0';
    return str;
  }
  return FUNC8();
}