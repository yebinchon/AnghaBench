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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  SHA1_CTX ctx;
  uint8_t digest[20];
  // Read the string from lua (with length)
  int len;
  const char* msg = FUNC3(L, 1, &len);
  // Use the SHA* functions in the rom
  FUNC1(&ctx);
  FUNC2(&ctx, msg, len);
  FUNC0(digest, &ctx);

  // Push the result as a lua string
  FUNC4(L, digest, 20);
  return 1;
}