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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value obj)
{
  mrb_value *argv;
  mrb_value pathv;
  mrb_int argc, i;
  char *path;

  FUNC4(mrb, "*", &argv, &argc);
  for (i = 0; i < argc; i++) {
    const char *utf8_path;
    pathv = FUNC2(mrb, argv[i]);
    utf8_path = FUNC0(mrb, pathv);
    path = FUNC6(utf8_path, -1);
    if (FUNC1(path) < 0) {
      FUNC5(path);
      FUNC7(mrb, utf8_path);
    }
    FUNC5(path);
  }
  return FUNC3(argc);
}