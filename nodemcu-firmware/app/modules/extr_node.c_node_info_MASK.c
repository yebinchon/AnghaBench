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
 int /*<<< orphan*/  BUILDINFO_BRANCH ; 
 int /*<<< orphan*/  BUILDINFO_BUILD_TYPE ; 
 int /*<<< orphan*/  BUILDINFO_COMMIT_ID ; 
 int /*<<< orphan*/  BUILDINFO_LFS ; 
 int /*<<< orphan*/  BUILDINFO_MODULES ; 
 int /*<<< orphan*/  BUILDINFO_RELEASE ; 
 int /*<<< orphan*/  BUILDINFO_RELEASE_DTS ; 
 int /*<<< orphan*/  BUILDINFO_SSL ; 
 int NODE_VERSION_MAJOR ; 
 int NODE_VERSION_MINOR ; 
 int NODE_VERSION_REVISION ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 () ; 
 int FUNC13 () ; 

__attribute__((used)) static int FUNC14( lua_State* L )
{
  const char* options[] = {"hw", "sw_version", "build_config", "legacy", NULL};
  int option = FUNC3 (L, 1, options[3], options);

  switch (option) {
    case 0: { // hw
      FUNC4 (L, 0, 5);
      int table_index = FUNC5(L);
      FUNC7(L, FUNC13());   // chip id
      FUNC10(L, table_index, "chip_id");
      FUNC7(L, FUNC12());     // flash id
      FUNC10(L, table_index, "flash_id");
      FUNC7(L, FUNC1() / 1024);  // flash size in KB
      FUNC10(L, table_index, "flash_size");
      FUNC7(L, FUNC0());
      FUNC10(L, table_index, "flash_mode");
      FUNC7(L, FUNC2());
      FUNC10(L, table_index, "flash_speed");
      return 1;
    }
    case 1: { // sw_version
      FUNC4 (L, 0, 7);
      int table_index = FUNC5(L);
      FUNC7(L, NODE_VERSION_MAJOR);
      FUNC10(L, table_index, "node_version_major");
      FUNC7(L, NODE_VERSION_MINOR);
      FUNC10(L, table_index, "node_version_minor");
      FUNC7(L, NODE_VERSION_REVISION);
      FUNC10(L, table_index, "node_version_revision");
      FUNC9(L, BUILDINFO_BRANCH);
      FUNC10(L, table_index, "git_branch");
      FUNC9(L, BUILDINFO_COMMIT_ID);
      FUNC10(L, table_index, "git_commit_id");
      FUNC9(L, BUILDINFO_RELEASE);
      FUNC10(L, table_index, "git_release");
      FUNC9(L, BUILDINFO_RELEASE_DTS);
      FUNC10(L, table_index, "git_commit_dts");
      return 1;
    }
    case 2: { // build_config
      FUNC4 (L, 0, 4);
      int table_index = FUNC5(L);
      FUNC6(L, BUILDINFO_SSL);
      FUNC10(L, table_index, "ssl");
      FUNC8(L, BUILDINFO_LFS);
      FUNC10(L, table_index, "lfs_size");
      FUNC9(L, BUILDINFO_MODULES);
      FUNC10(L, table_index, "modules");
      FUNC9(L, BUILDINFO_BUILD_TYPE);
      FUNC10(L, table_index, "number_type");
      return 1;
    }
    default:
    {
      FUNC11("node.info() without parameter", "in the next version");
      FUNC7(L, NODE_VERSION_MAJOR);
      FUNC7(L, NODE_VERSION_MINOR);
      FUNC7(L, NODE_VERSION_REVISION);
      FUNC7(L, FUNC13());   // chip id
      FUNC7(L, FUNC12());     // flash id
      FUNC7(L, FUNC1() / 1024);  // flash size in KB
      FUNC7(L, FUNC0());
      FUNC7(L, FUNC2());
      return 8;
    }
  }
}