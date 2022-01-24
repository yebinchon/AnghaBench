#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct RClass* FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_filetest_s_directory_p ; 
 int /*<<< orphan*/  mrb_filetest_s_exist_p ; 
 int /*<<< orphan*/  mrb_filetest_s_file_p ; 
 int /*<<< orphan*/  mrb_filetest_s_pipe_p ; 
 int /*<<< orphan*/  mrb_filetest_s_size ; 
 int /*<<< orphan*/  mrb_filetest_s_size_p ; 
 int /*<<< orphan*/  mrb_filetest_s_socket_p ; 
 int /*<<< orphan*/  mrb_filetest_s_symlink_p ; 
 int /*<<< orphan*/  mrb_filetest_s_zero_p ; 

void
FUNC3(mrb_state *mrb)
{
  struct RClass *f;

  f = FUNC1(mrb, "FileTest", mrb->object_class);

  FUNC2(mrb, f, "directory?", mrb_filetest_s_directory_p, FUNC0(1));
  FUNC2(mrb, f, "exist?",     mrb_filetest_s_exist_p,     FUNC0(1));
  FUNC2(mrb, f, "exists?",    mrb_filetest_s_exist_p,     FUNC0(1));
  FUNC2(mrb, f, "file?",      mrb_filetest_s_file_p,      FUNC0(1));
  FUNC2(mrb, f, "pipe?",      mrb_filetest_s_pipe_p,      FUNC0(1));
  FUNC2(mrb, f, "size",       mrb_filetest_s_size,        FUNC0(1));
  FUNC2(mrb, f, "size?",      mrb_filetest_s_size_p,      FUNC0(1));
  FUNC2(mrb, f, "socket?",    mrb_filetest_s_socket_p,    FUNC0(1));
  FUNC2(mrb, f, "symlink?",   mrb_filetest_s_symlink_p,   FUNC0(1));
  FUNC2(mrb, f, "zero?",      mrb_filetest_s_zero_p,      FUNC0(1));
}