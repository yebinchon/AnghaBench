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
struct key_type {int dummy; } ;
struct key_direction_state {int /*<<< orphan*/  need_keys; } ;
struct key_ctx_bi {int dummy; } ;
struct key2 {int n; } ;
typedef  int /*<<< orphan*/  key2 ;

/* Variables and functions */
 int /*<<< orphan*/  M_ERR ; 
 int RKF_INLINE ; 
 int RKF_MUST_SUCCEED ; 
 int /*<<< orphan*/  FUNC0 (struct key_ctx_bi*,struct key2*,int const,struct key_type const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct key_direction_state*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,struct key2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key2*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct key2*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct key2*,struct key_type const*,char const*) ; 

void
FUNC7(const struct key_type *key_type,
                        struct key_ctx_bi *ctx, const char *key_file, const char *key_inline,
                        const int key_direction, const char *key_name, const char *opt_name)
{
    struct key2 key2;
    struct key_direction_state kds;

    if (key_inline)
    {
        FUNC4(&key2, key_inline, RKF_MUST_SUCCEED|RKF_INLINE);
    }
    else
    {
        FUNC4(&key2, key_file, RKF_MUST_SUCCEED);
    }

    if (key2.n != 2)
    {
        FUNC2(M_ERR, "File '%s' does not have OpenVPN Static Key format.  Using "
            "free-form passphrase file is not supported anymore.", key_file);
    }

    /* check for and fix highly unlikely key problems */
    FUNC6(&key2, key_type, key_file);

    /* handle key direction */
    FUNC1(&kds, key_direction);
    FUNC3(key_file, opt_name, &key2, kds.need_keys);

    /* initialize key in both directions */
    FUNC0(ctx, &key2, key_direction, key_type, key_name);
    FUNC5(&key2, sizeof(key2));
}