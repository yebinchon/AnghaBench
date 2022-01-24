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
struct tls_multi {struct key_state** key_scan; } ;
struct key_state {int /*<<< orphan*/  session_id_remote; int /*<<< orphan*/  key_id; int /*<<< orphan*/  state; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 int KEY_SCAN_SIZE ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC5(struct tls_multi *multi, struct gc_arena *gc)
{
    int i;
    struct buffer out = FUNC1(256, gc);

    for (i = 0; i < KEY_SCAN_SIZE; ++i)
    {
        struct key_state *ks = multi->key_scan[i];
        FUNC2(&out, " [key#%d state=%s id=%d sid=%s]", i,
                   FUNC4(ks->state), ks->key_id,
                   FUNC3(&ks->session_id_remote, gc));
    }

    return FUNC0(&out);
}