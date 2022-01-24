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
struct stat {int dummy; } ;
struct serve_files_priv {int dummy; } ;
struct file_cache_entry {struct cache_funcs const* funcs; } ;
struct cache_funcs {int /*<<< orphan*/  (* init ) (struct file_cache_entry*,struct serve_files_priv*,char const*,struct stat*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file_cache_entry*) ; 
 struct file_cache_entry* FUNC3 (int) ; 
 struct cache_funcs const mmap_funcs ; 
 struct cache_funcs sendfile_funcs ; 
 int /*<<< orphan*/  FUNC4 (struct file_cache_entry*,struct serve_files_priv*,char const*,struct stat*) ; 

__attribute__((used)) static struct file_cache_entry *
FUNC5(struct serve_files_priv *priv,
                              const char *full_path,
                              struct stat *st,
                              const struct cache_funcs *funcs)
{
    struct file_cache_entry *fce;

    fce = FUNC3(sizeof(*fce));
    if (FUNC1(!fce))
        return NULL;

    if (FUNC0(funcs->init(fce, priv, full_path, st))) {
        fce->funcs = funcs;
        return fce;
    }

    FUNC2(fce);

    if (funcs != &mmap_funcs)
        return NULL;

    return FUNC5(priv, full_path, st, &sendfile_funcs);
}