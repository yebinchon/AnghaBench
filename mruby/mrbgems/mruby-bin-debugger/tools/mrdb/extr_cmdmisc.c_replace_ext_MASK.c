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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 char* FUNC6 (char const*,char) ; 

char*
FUNC7(mrb_state *mrb, const char *filename, const char *ext)
{
  size_t len;
  const char *p;
  char *s;

  if (filename == NULL) {
    return NULL;
  }

  if ((p = FUNC6(filename, '.')) != NULL && FUNC3(p, '/') == NULL) {
    len = p - filename;
  }
  else {
    len = FUNC4(filename);
  }

  s = (char*)FUNC1(mrb, len + FUNC4(ext) + 1);
  FUNC0(s, '\0', len + FUNC4(ext) + 1);
  FUNC5(s, filename, len);
  FUNC2(s, ext);

  return s;
}