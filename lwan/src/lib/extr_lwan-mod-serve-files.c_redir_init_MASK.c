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
struct serve_files_priv {int root_path_len; } ;
struct redir_cache_data {int /*<<< orphan*/  redir_to; } ;
struct file_cache_entry {char* mime_type; struct redir_cache_data redir_cache_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static bool FUNC1(struct file_cache_entry *ce,
                       struct serve_files_priv *priv,
                       const char *full_path,
                       struct stat *st __attribute__((unused)))
{
    struct redir_cache_data *rd = &ce->redir_cache_data;

    if (FUNC0(&rd->redir_to, "%s/", full_path + priv->root_path_len) < 0)
        return false;

    ce->mime_type = "text/plain";
    return true;
}