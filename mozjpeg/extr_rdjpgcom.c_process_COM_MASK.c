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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC7(int raw)
{
  unsigned int length;
  int ch;
  int lastch = 0;

  /* Bill Allombert: set locale properly for isprint */
#ifdef HAVE_LOCALE_H
  setlocale(LC_CTYPE, "");
#endif

  /* Get the marker parameter length count */
  length = FUNC5();
  /* Length includes itself, so must be at least 2 */
  if (length < 2)
    FUNC0("Erroneous JPEG marker length");
  length -= 2;

  while (length > 0) {
    ch = FUNC4();
    if (raw) {
      FUNC3(ch, stdout);
    /* Emit the character in a readable form.
     * Nonprintables are converted to \nnn form,
     * while \ is converted to \\.
     * Newlines in CR, CR/LF, or LF form will be printed as one newline.
     */
    } else if (ch == '\r') {
      FUNC2("\n");
    } else if (ch == '\n') {
      if (lastch != '\r')
        FUNC2("\n");
    } else if (ch == '\\') {
      FUNC2("\\\\");
    } else if (FUNC1(ch)) {
      FUNC3(ch, stdout);
    } else {
      FUNC2("\\%03o", ch);
    }
    lastch = ch;
    length--;
  }
  FUNC2("\n");

  /* Bill Allombert: revert to C locale */
#ifdef HAVE_LOCALE_H
  setlocale(LC_CTYPE, "C");
#endif
}