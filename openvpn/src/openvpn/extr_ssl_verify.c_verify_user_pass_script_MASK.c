#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct user_pass {char const* username; char* password; } ;
struct tls_session {char* common_name; TYPE_1__* opt; } ;
struct tls_multi {int dummy; } ;
struct status_output {int dummy; } ;
struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;
struct TYPE_2__ {int ssl_flags; int /*<<< orphan*/  es; scalar_t__ auth_user_pass_verify_script_via_file; int /*<<< orphan*/  auth_user_pass_verify_script; int /*<<< orphan*/  tmp_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_TLS_ERRORS ; 
 int SSLF_AUTH_USER_PASS_OPTIONAL ; 
 int /*<<< orphan*/  STATUS_OUTPUT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct tls_session*,struct tls_multi*,struct user_pass const*) ; 
 struct argv FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct argv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct argv*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (struct argv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct tls_session*) ; 
 int /*<<< orphan*/  FUNC14 (struct status_output*) ; 
 struct status_output* FUNC15 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct status_output*,char*,char*) ; 
 scalar_t__ FUNC17 (char const*) ; 

__attribute__((used)) static bool
FUNC18(struct tls_session *session, struct tls_multi *multi,
                        const struct user_pass *up)
{
    struct gc_arena gc = FUNC6();
    struct argv argv = FUNC1();
    const char *tmp_file = "";
    bool ret = false;

    /* Is username defined? */
    if ((session->opt->ssl_flags & SSLF_AUTH_USER_PASS_OPTIONAL) || FUNC17(up->username))
    {
        /* Set environmental variables prior to calling script */
        FUNC12(session->opt->es, "script_type", "user-pass-verify");

        if (session->opt->auth_user_pass_verify_script_via_file)
        {
            struct status_output *so;

            tmp_file = FUNC9(session->opt->tmp_dir, "up",
                                                 &gc);
            if (tmp_file)
            {
                so = FUNC15(tmp_file, 0, -1, NULL, STATUS_OUTPUT_WRITE);
                FUNC16(so, "%s", up->username);
                FUNC16(so, "%s", up->password);
                if (!FUNC14(so))
                {
                    FUNC7(D_TLS_ERRORS, "TLS Auth Error: could not write username/password to file: %s",
                        tmp_file);
                    goto done;
                }
            }
            else
            {
                FUNC7(D_TLS_ERRORS, "TLS Auth Error: could not create write "
                    "username/password to temp file");
            }
        }
        else
        {
            FUNC12(session->opt->es, "username", up->username);
            FUNC12(session->opt->es, "password", up->password);
        }

        /* setenv incoming cert common name for script */
        FUNC12(session->opt->es, "common_name", session->common_name);

        /* setenv client real IP address */
        FUNC13(session);

        /* add auth-token environment */
        FUNC0(session, multi, up);

        /* format command line */
        FUNC2(&argv, session->opt->auth_user_pass_verify_script);
        FUNC3(&argv, "%s", tmp_file);

        /* call command */
        ret = FUNC8(&argv, session->opt->es, 0,
                                 "--auth-user-pass-verify");

        if (!session->opt->auth_user_pass_verify_script_via_file)
        {
            FUNC11(session->opt->es, "password");
        }
    }
    else
    {
        FUNC7(D_TLS_ERRORS, "TLS Auth Error: peer provided a blank username");
    }

done:
    if (tmp_file && FUNC17(tmp_file) > 0)
    {
        FUNC10(tmp_file);
    }

    FUNC4(&argv);
    FUNC5(&gc);
    return ret;
}