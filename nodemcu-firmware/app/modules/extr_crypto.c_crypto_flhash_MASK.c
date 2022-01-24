#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int digest_size; } ;
typedef  TYPE_1__ digest_mech_info_t ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  vfs_read_wrap ; 

__attribute__((used)) static int FUNC9 (lua_State *L)
{
  const digest_mech_info_t *mi = FUNC3 (FUNC5 (L, 1));
  if (!mi)
    return FUNC1 (L);
  const char *filename = FUNC5 (L, 2);

  // Open the file
  int file_fd = FUNC8 (filename, "r");
  if(!file_fd) {
    return FUNC0(L);
  }

  // Compute hash
  uint8_t digest[mi->digest_size];
  int returncode = FUNC4 (mi, &vfs_read_wrap, file_fd, digest);

  // Finish up
  FUNC7(file_fd);

  if (returncode == ENOMEM)
    return FUNC2 (L);
  else if (returncode == EINVAL)
    return FUNC1(L);
  else
    FUNC6 (L, digest, sizeof (digest));

  return 1;
}