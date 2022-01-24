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
 struct RString* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct RString*) ; 
 char* FUNC2 (struct RString*) ; 
 int /*<<< orphan*/  FUNC3 (struct RString*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RString*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value self)
{
  mrb_value str, str2;
  mrb_int len, newlen;
  struct RString *s;
  char *p;

  FUNC5(mrb, "Si", &str, &len);
  s = FUNC0(str);
  FUNC6(mrb, s);
  p = FUNC2(s);
  str2 = FUNC7(mrb, p, len);
  newlen = FUNC1(s)-len;
  FUNC4(p, p+len, newlen);
  p[newlen] = '\0';
  FUNC3(s, newlen);

  return str2;
}