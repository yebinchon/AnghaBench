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
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  ASS_Library ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mp_log*) ; 
 int /*<<< orphan*/  message_callback ; 
 char* FUNC4 (int /*<<< orphan*/ *,struct mpv_global*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

ASS_Library *FUNC6(struct mpv_global *global, struct mp_log *log)
{
    char *path = FUNC4(NULL, global, "fonts");
    ASS_Library *priv = FUNC1();
    if (!priv)
        FUNC0();
    FUNC3(priv, message_callback, log);
    if (path)
        FUNC2(priv, path);
    FUNC5(path);
    return priv;
}