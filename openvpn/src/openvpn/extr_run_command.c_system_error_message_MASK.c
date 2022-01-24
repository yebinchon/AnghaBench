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
struct gc_arena {int dummy; } ;
struct buffer {scalar_t__ data; } ;

/* Variables and functions */
#define  OPENVPN_EXECVE_ERROR 129 
 int const OPENVPN_EXECVE_FAILURE ; 
#define  OPENVPN_EXECVE_NOT_ALLOWED 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct buffer FUNC2 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char*,...) ; 

__attribute__((used)) static const char *
FUNC4(int stat, struct gc_arena *gc)
{
    struct buffer out = FUNC2(256, gc);

    switch (stat)
    {
        case OPENVPN_EXECVE_NOT_ALLOWED:
            FUNC3(&out, "disallowed by script-security setting");
            break;

#ifdef _WIN32
        case OPENVPN_EXECVE_ERROR:
            buf_printf(&out, "external program did not execute -- ");
        /* fall through */

        default:
            buf_printf(&out, "returned error code %d", stat);
            break;
#else  /* ifdef _WIN32 */

        case OPENVPN_EXECVE_ERROR:
            FUNC3(&out, "external program fork failed");
            break;

        default:
            if (!FUNC1(stat))
            {
                FUNC3(&out, "external program did not exit normally");
            }
            else
            {
                const int cmd_ret = FUNC0(stat);
                if (!cmd_ret)
                {
                    FUNC3(&out, "external program exited normally");
                }
                else if (cmd_ret == OPENVPN_EXECVE_FAILURE)
                {
                    FUNC3(&out, "could not execute external program");
                }
                else
                {
                    FUNC3(&out, "external program exited with error status: %d", cmd_ret);
                }
            }
            break;
#endif /* ifdef _WIN32 */
    }
    return (const char *)out.data;
}