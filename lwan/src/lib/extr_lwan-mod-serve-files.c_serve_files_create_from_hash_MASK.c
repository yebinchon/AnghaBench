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
struct lwan_serve_files_settings {size_t read_ahead; int /*<<< orphan*/  auto_index_readme; int /*<<< orphan*/  directory_list_template; int /*<<< orphan*/  auto_index; int /*<<< orphan*/  serve_precompressed_files; int /*<<< orphan*/  index_html; int /*<<< orphan*/  root_path; } ;
struct hash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERVE_FILES_READ_AHEAD_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct hash const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char const*,struct lwan_serve_files_settings*) ; 

__attribute__((used)) static void *FUNC4(const char *prefix,
                                          const struct hash *hash)
{
    struct lwan_serve_files_settings settings = {
        .root_path = FUNC0(hash, "path"),
        .index_html = FUNC0(hash, "index_path"),
        .serve_precompressed_files =
            FUNC1(FUNC0(hash, "serve_precompressed_files"), true),
        .auto_index = FUNC1(FUNC0(hash, "auto_index"), true),
        .directory_list_template = FUNC0(hash, "directory_list_template"),
        .read_ahead =
            (size_t)FUNC2("read_ahead", SERVE_FILES_READ_AHEAD_BYTES),
        .auto_index_readme =
            FUNC1(FUNC0(hash, "auto_index_readme"), true),
    };

    return FUNC3(prefix, &settings);
}