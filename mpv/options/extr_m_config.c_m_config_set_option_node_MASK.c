#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union m_option_value {int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
struct m_config_option {int /*<<< orphan*/  opt; } ;
struct m_config {int /*<<< orphan*/  log; } ;
typedef  int /*<<< orphan*/  bstr ;
struct TYPE_4__ {char* (* print ) (int /*<<< orphan*/ *,struct mpv_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MPV_FORMAT_STRING ; 
 int /*<<< orphan*/  FUNC1 (struct m_config*,char*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  MSGL_V ; 
 int M_OPT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct m_config_option* FUNC3 (struct m_config*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct m_config*,struct m_config_option*,union m_option_value*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,union m_option_value*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union m_option_value*) ; 
 int FUNC7 (int /*<<< orphan*/ ,union m_option_value*,struct mpv_node*) ; 
 TYPE_2__ m_option_type_node ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_null_log ; 
 char* FUNC9 (int /*<<< orphan*/ *,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(struct m_config *config, bstr name,
                             struct mpv_node *data, int flags)
{
    int r;

    struct m_config_option *co = FUNC3(config, name);
    if (!co)
        return M_OPT_UNKNOWN;

    // Do this on an "empty" type to make setting the option strictly overwrite
    // the old value, as opposed to e.g. appending to lists.
    union m_option_value val = {0};

    if (data->format == MPV_FORMAT_STRING) {
        bstr param = FUNC2(data->u.string);
        r = FUNC6(mp_null_log, co->opt, name, param, &val);
    } else {
        r = FUNC7(co->opt, &val, data);
    }

    if (r >= 0)
        r = FUNC4(config, co, &val, flags);

    if (FUNC8(config->log, MSGL_V)) {
        char *s = m_option_type_node.print(NULL, data);
        FUNC1(config, "Setting option '%.*s' = %s (flags = %d) -> %d\n",
               FUNC0(name), s ? s : "?", flags, r);
        FUNC10(s);
    }

    FUNC5(co->opt, &val);
    return r;
}