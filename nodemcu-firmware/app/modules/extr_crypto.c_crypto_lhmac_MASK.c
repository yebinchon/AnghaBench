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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,char const*,size_t,char const*,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L)
{
  const digest_mech_info_t *mi = FUNC2 (FUNC5 (L, 1));
  if (!mi)
    return FUNC0 (L);
  size_t len = 0;
  const char *data = FUNC4 (L, 2, &len);
  size_t klen = 0;
  const char *key = FUNC4 (L, 3, &klen);

  uint8_t digest[mi->digest_size];
  if (FUNC3 (mi, data, len, key, klen, digest) != 0)
    return FUNC1 (L);

  FUNC6 (L, digest, sizeof (digest));
  return 1;
}