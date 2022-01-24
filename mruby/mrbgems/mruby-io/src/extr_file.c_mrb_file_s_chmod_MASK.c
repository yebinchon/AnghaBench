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
 int FUNC0 (char*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value klass) {
  mrb_int mode;
  mrb_int argc, i;
  mrb_value *filenames;
  int ai = FUNC4(mrb);

  FUNC5(mrb, "i*", &mode, &filenames, &argc);
  for (i = 0; i < argc; i++) {
    const char *utf8_path = FUNC1(mrb, filenames[i]);
    char *path = FUNC7(utf8_path, -1);
    if (FUNC0(path, mode) == -1) {
      FUNC6(path);
      FUNC8(mrb, utf8_path);
    }
    FUNC6(path);
    FUNC3(mrb, ai);
  }

  return FUNC2(argc);
}