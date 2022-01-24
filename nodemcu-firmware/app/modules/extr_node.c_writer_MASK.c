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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int,char const*,size_t) ; 

__attribute__((used)) static int FUNC3(lua_State* L, const void* p, size_t size, void* u)
{
  FUNC1(L);
  int file_fd = *( (int *)u );
  if (!file_fd)
    return 1;
  FUNC0("get fd:%d,size:%d\n", file_fd, size);

  if (size != 0 && (size != FUNC2(file_fd, (const char *)p, size)) )
    return 1;
  FUNC0("write fd:%d,size:%d\n", file_fd, size);
  return 0;
}