
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd {int dummy; } ;
struct input_ctx {int log; } ;
typedef int bstr ;


 struct mp_cmd* mp_input_parse_cmd_str (int ,int ,char const*) ;

struct mp_cmd *mp_input_parse_cmd(struct input_ctx *ictx, bstr str,
                                  const char *location)
{
    return mp_input_parse_cmd_str(ictx->log, str, location);
}
