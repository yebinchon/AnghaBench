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
struct mp_log_root {int /*<<< orphan*/  log_file; } ;
struct mp_log {char* verbose_prefix; int /*<<< orphan*/  terminal_level; struct mp_log_root* root; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MP_START_TIME ; 
 int /*<<< orphan*/  MSGL_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,char*,char*) ; 
 int** mp_log_levels ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mp_log *log, int lev, char *text)
{
    struct mp_log_root *root = log->root;

    if (!root->log_file || lev > FUNC0(MSGL_DEBUG, log->terminal_level))
        return;

    FUNC2(root->log_file, "[%8.3d][%c][%s] %s",
            (FUNC3() - MP_START_TIME) / 1e6,
            mp_log_levels[lev][0],
            log->verbose_prefix, text);
    FUNC1(root->log_file);
}