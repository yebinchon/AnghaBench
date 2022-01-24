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
struct serve_files_priv {struct serve_files_priv* prefix; struct serve_files_priv* root_path; int /*<<< orphan*/  root_fd; int /*<<< orphan*/  cache; int /*<<< orphan*/  directory_list_tpl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct serve_files_priv*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data)
{
    struct serve_files_priv *priv = data;

    if (!priv) {
        FUNC3("Nothing to shutdown");
        return;
    }

    FUNC4(priv->directory_list_tpl);
    FUNC0(priv->cache);
    FUNC1(priv->root_fd);
    FUNC2(priv->root_path);
    FUNC2(priv->prefix);
    FUNC2(priv);
}