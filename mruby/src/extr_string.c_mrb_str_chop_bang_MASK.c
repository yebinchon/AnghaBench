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
typedef  int mrb_int ;

/* Variables and functions */
 int FUNC0 (struct RString*) ; 
 char* FUNC1 (struct RString*) ; 
 int /*<<< orphan*/  FUNC2 (struct RString*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct RString*) ; 
 struct RString* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char const*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value str)
{
  struct RString *s = FUNC5(str);

  FUNC4(mrb, s);
  if (FUNC0(s) > 0) {
    mrb_int len;
#ifdef MRB_UTF8_STRING
    const char* t = RSTR_PTR(s), *p = t;
    const char* e = p + RSTR_LEN(s);
    while (p<e) {
      mrb_int clen = utf8len(p, e);
      if (p + clen>=e) break;
      p += clen;
    }
    len = p - t;
#else
    len = FUNC0(s) - 1;
#endif
    if (FUNC1(s)[len] == '\n') {
      if (len > 0 &&
          FUNC1(s)[len-1] == '\r') {
        len--;
      }
    }
    FUNC2(s, len);
    FUNC1(s)[len] = '\0';
    return str;
  }
  return FUNC3();
}