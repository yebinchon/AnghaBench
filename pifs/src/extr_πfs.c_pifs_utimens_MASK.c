#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdd; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *path, const struct timespec times[2])
{
  DIR *dir = FUNC3(options.mdd);
  if (!dir) {
    return -errno;
  }
  int ret = FUNC4(FUNC2(dir), FUNC0((char *) path), times, 0);
  FUNC1(dir);
  return ret == -1 ? -errno : ret;
}