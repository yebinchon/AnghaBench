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
typedef  int /*<<< orphan*/  cases ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static const char *FUNC6(void) {
  const char *cases[] = {"test", "longer string"};
  unsigned long i;
  char enc[8192];
  char dec[8192];

  for (i = 0; i < sizeof(cases) / sizeof(cases[0]); i++) {
    FUNC3((unsigned char *) cases[i], FUNC5(cases[i]), enc);
    FUNC2((unsigned char *) enc, FUNC5(enc), dec);

    FUNC0(FUNC4(cases[i], dec), 0);
  }

  FUNC0(FUNC2((unsigned char *) "кю", 4, dec), 0);
  FUNC0(FUNC2((unsigned char *) "AAAA----", 8, dec), 4);
  FUNC0(FUNC2((unsigned char *) "Q2VzYW50YQ==", 12, dec), 12);
  FUNC1(dec, "Cesanta");

  return NULL;
}