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
struct stat {size_t st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

__attribute__((used)) static char *FUNC6(const char *path, size_t *size) {
  FILE *fp;
  struct stat st;
  char *data = NULL;
  if ((fp = FUNC5(path, "rb")) != NULL && !FUNC3(FUNC1(fp), &st)) {
    *size = st.st_size;
    data = (char *) FUNC4(*size);
    FUNC2(data, 1, *size, fp);
    FUNC0(fp);
  }
  return data;
}