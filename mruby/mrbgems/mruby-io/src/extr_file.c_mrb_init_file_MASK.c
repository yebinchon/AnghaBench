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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ALT_SEPARATOR ; 
 int /*<<< orphan*/  FILE_SEPARATOR ; 
 int /*<<< orphan*/  LOCK_EX ; 
 int /*<<< orphan*/  LOCK_NB ; 
 int /*<<< orphan*/  LOCK_SH ; 
 int /*<<< orphan*/  LOCK_UN ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  NULL_FILE ; 
 int /*<<< orphan*/  PATH_SEPARATOR ; 
 struct RClass* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct RClass* FUNC7 (int /*<<< orphan*/ *,char*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 struct RClass* FUNC11 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 int /*<<< orphan*/  mrb_file__gethome ; 
 int /*<<< orphan*/  mrb_file__getwd ; 
 int /*<<< orphan*/  mrb_file_basename ; 
 int /*<<< orphan*/  mrb_file_dirname ; 
 int /*<<< orphan*/  mrb_file_flock ; 
 int /*<<< orphan*/  mrb_file_mtime ; 
 int /*<<< orphan*/  mrb_file_realpath ; 
 int /*<<< orphan*/  mrb_file_s_chmod ; 
 int /*<<< orphan*/  mrb_file_s_readlink ; 
 int /*<<< orphan*/  mrb_file_s_rename ; 
 int /*<<< orphan*/  mrb_file_s_symlink ; 
 int /*<<< orphan*/  mrb_file_s_umask ; 
 int /*<<< orphan*/  mrb_file_s_unlink ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC15(mrb_state *mrb)
{
  struct RClass *io, *file, *cnst;

  io   = FUNC6(mrb, "IO");
  file = FUNC7(mrb, "File", io);
  FUNC5(file, MRB_TT_DATA);
  FUNC8(mrb, file, "umask",  mrb_file_s_umask, FUNC2(1));
  FUNC8(mrb, file, "delete", mrb_file_s_unlink, FUNC0());
  FUNC8(mrb, file, "unlink", mrb_file_s_unlink, FUNC0());
  FUNC8(mrb, file, "rename", mrb_file_s_rename, FUNC3(2));
  FUNC8(mrb, file, "symlink", mrb_file_s_symlink, FUNC3(2));
  FUNC8(mrb, file, "chmod", mrb_file_s_chmod, FUNC3(1) | FUNC4());
  FUNC8(mrb, file, "readlink", mrb_file_s_readlink, FUNC3(1));

  FUNC8(mrb, file, "dirname",   mrb_file_dirname,    FUNC3(1));
  FUNC8(mrb, file, "basename",  mrb_file_basename,   FUNC3(1));
  FUNC8(mrb, file, "realpath",  mrb_file_realpath,   FUNC3(1)|FUNC2(1));
  FUNC8(mrb, file, "_getwd",    mrb_file__getwd,     FUNC1());
  FUNC8(mrb, file, "_gethome",  mrb_file__gethome,   FUNC2(1));

  FUNC10(mrb, file, "flock", mrb_file_flock, FUNC3(1));
  FUNC10(mrb, file, "mtime", mrb_file_mtime, FUNC1());

  cnst = FUNC11(mrb, file, "Constants");
  FUNC9(mrb, cnst, "LOCK_SH", FUNC12(LOCK_SH));
  FUNC9(mrb, cnst, "LOCK_EX", FUNC12(LOCK_EX));
  FUNC9(mrb, cnst, "LOCK_UN", FUNC12(LOCK_UN));
  FUNC9(mrb, cnst, "LOCK_NB", FUNC12(LOCK_NB));
  FUNC9(mrb, cnst, "SEPARATOR", FUNC14(mrb, FILE_SEPARATOR));
  FUNC9(mrb, cnst, "PATH_SEPARATOR", FUNC14(mrb, PATH_SEPARATOR));
#if defined(_WIN32) || defined(_WIN64)
  mrb_define_const(mrb, cnst, "ALT_SEPARATOR", mrb_str_new_cstr(mrb, FILE_ALT_SEPARATOR));
#else
  FUNC9(mrb, cnst, "ALT_SEPARATOR", FUNC13());
#endif
  FUNC9(mrb, cnst, "NULL", FUNC14(mrb, NULL_FILE));

}