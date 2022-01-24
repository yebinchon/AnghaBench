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
struct mp_log {int dummy; } ;
struct m_obj_settings {int dummy; } ;
struct m_config_option {int /*<<< orphan*/  opt; int /*<<< orphan*/  data; } ;
struct MPContext {int /*<<< orphan*/  mconfig; } ;
typedef  int /*<<< orphan*/  optname ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char const** filter_opt ; 
 struct m_config_option* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct m_obj_settings**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct m_obj_settings**) ; 
 int FUNC5 (struct mp_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct m_obj_settings**) ; 
 int FUNC6 (struct MPContext*,int,struct m_obj_settings*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static int FUNC8(struct MPContext *mpctx, struct mp_log *log,
                        enum stream_type mediatype,
                        const char *cmd, const char *arg)
{
    bstr option = FUNC1(filter_opt[mediatype]);
    struct m_config_option *co = FUNC2(mpctx->mconfig, option);
    if (!co)
        return -1;

    // The option parser is used to modify the filter list itself.
    char optname[20];
    FUNC7(optname, sizeof(optname), "%.*s-%s", FUNC0(option), cmd);

    struct m_obj_settings *new_chain = NULL;
    FUNC3(co->opt, &new_chain, co->data);

    int r = FUNC5(log, co->opt, FUNC1(optname), FUNC1(arg), &new_chain);
    if (r >= 0)
        r = FUNC6(mpctx, mediatype, new_chain);

    FUNC4(co->opt, &new_chain);

    return r >= 0 ? 0 : -1;
}