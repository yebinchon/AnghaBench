#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct input_ctx {TYPE_1__* opts; int /*<<< orphan*/  global; } ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef  TYPE_2__ bstr ;
struct TYPE_10__ {char* config_file; scalar_t__ use_gamepad; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 TYPE_2__ FUNC2 (TYPE_2__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__,char*) ; 
 int /*<<< orphan*/  builtin_input_conf ; 
 int /*<<< orphan*/  FUNC4 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_ctx*) ; 
 int /*<<< orphan*/  m_option_type_string ; 
 char** FUNC6 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC10 (struct input_ctx*,int,TYPE_2__,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct input_ctx*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct input_ctx*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct input_ctx *ictx)
{
    FUNC4(ictx);

    FUNC12(ictx, false);

    // "Uncomment" the default key bindings in etc/input.conf and add them.
    // All lines that do not start with '# ' are parsed.
    bstr builtin = FUNC0(builtin_input_conf);
    while (builtin.len) {
        bstr line = FUNC2(builtin, &builtin);
        FUNC1(&line, "#");
        if (!FUNC3(line, " "))
            FUNC10(ictx, true, line, "<builtin>", NULL);
    }

    bool config_ok = false;
    if (ictx->opts->config_file && ictx->opts->config_file[0])
        config_ok = FUNC11(ictx, ictx->opts->config_file, true);
    if (!config_ok) {
        // Try global conf dir
        void *tmp = FUNC14(NULL);
        char **files = FUNC6(tmp, ictx->global, "input.conf");
        for (int n = 0; files && files[n]; n++)
            FUNC11(ictx, files[n], false);
        FUNC13(tmp);
    }

#if HAVE_WIN32_PIPES
    char *ifile;
    mp_read_option_raw(ictx->global, "input-file", &m_option_type_string, &ifile);
    if (ifile && ifile[0])
        mp_input_pipe_add(ictx, ifile);
    talloc_free(ifile);
#endif

#if HAVE_SDL2_GAMEPAD
    if (ictx->opts->use_gamepad) {
        mp_input_sdl_gamepad_add(ictx);
    }
#endif

    FUNC5(ictx);
}