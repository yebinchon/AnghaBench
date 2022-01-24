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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC3(void *param) {
  int ch, sock = *(int *) param;
  // Forward all types characters to the socketpair
  while ((ch = FUNC1()) != EOF) {
    unsigned char c = (unsigned char) ch;
    if (FUNC2(sock, (const char *) &c, 1, 0) < 0) {
      FUNC0(stderr, "Failed to send byte to the socket");
    }
  }
  return NULL;
}