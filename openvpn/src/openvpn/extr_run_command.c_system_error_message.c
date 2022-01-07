
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {scalar_t__ data; } ;



 int const OPENVPN_EXECVE_FAILURE ;

 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;

__attribute__((used)) static const char *
system_error_message(int stat, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(256, gc);

    switch (stat)
    {
        case 128:
            buf_printf(&out, "disallowed by script-security setting");
            break;
        case 129:
            buf_printf(&out, "external program fork failed");
            break;

        default:
            if (!WIFEXITED(stat))
            {
                buf_printf(&out, "external program did not exit normally");
            }
            else
            {
                const int cmd_ret = WEXITSTATUS(stat);
                if (!cmd_ret)
                {
                    buf_printf(&out, "external program exited normally");
                }
                else if (cmd_ret == OPENVPN_EXECVE_FAILURE)
                {
                    buf_printf(&out, "could not execute external program");
                }
                else
                {
                    buf_printf(&out, "external program exited with error status: %d", cmd_ret);
                }
            }
            break;

    }
    return (const char *)out.data;
}
