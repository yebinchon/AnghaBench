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
struct m_obj_settings {int dummy; } ;
struct m_config_option {int /*<<< orphan*/  opt; struct m_obj_settings** data; } ;
struct MPContext {int /*<<< orphan*/  mconfig; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * filter_opt ; 
 struct m_config_option* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct m_obj_settings**,struct m_obj_settings**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct m_obj_settings**) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct MPContext*,int) ; 

__attribute__((used)) static int FUNC6(struct MPContext *mpctx, enum stream_type mediatype,
                       struct m_obj_settings *new_chain)
{
    bstr option = FUNC0(filter_opt[mediatype]);
    struct m_config_option *co = FUNC1(mpctx->mconfig, option);
    if (!co)
        return -1;

    struct m_obj_settings **list = co->data;
    struct m_obj_settings *old_settings = *list;
    *list = NULL;
    FUNC2(co->opt, list, &new_chain);

    bool success = FUNC5(mpctx, mediatype);

    if (success) {
        FUNC3(co->opt, &old_settings);
        FUNC4(mpctx, filter_opt[mediatype]);
    } else {
        FUNC3(co->opt, list);
        *list = old_settings;
        FUNC5(mpctx, mediatype);
    }

    return success ? 0 : -1;
}