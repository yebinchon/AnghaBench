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
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTFUNCTION 132 
#define  LUA_TLIGHTUSERDATA 131 
#define  LUA_TNUMBER 130 
#define  LUA_TROTABLE 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static Node *FUNC11 (const Table *t, const TValue *key) {
  switch (FUNC10(key)) {
    case LUA_TNUMBER:
      return FUNC3(t, FUNC6(key));
    case LUA_TSTRING:
      return FUNC5(t, FUNC8(key));
    case LUA_TBOOLEAN:
      return FUNC2(t, FUNC0(key));
    case LUA_TROTABLE:
      return FUNC4(t, FUNC9(key));
    case LUA_TLIGHTUSERDATA:
    case LUA_TLIGHTFUNCTION:
      return FUNC4(t, FUNC7(key));
    default:
      return FUNC4(t, FUNC1(key));
  }
}