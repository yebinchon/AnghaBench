
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mp_input_src_internal {size_t cmd_buffer; size_t cmd_buffer_size; int drop; } ;
struct mp_input_src {int input_ctx; int log; struct mp_input_src_internal* in; } ;
struct mp_cmd {int dummy; } ;
struct TYPE_5__ {size_t member_0; size_t member_1; } ;
typedef TYPE_1__ bstr ;


 size_t CMD_BUFFER ;
 int MP_WARN (struct mp_input_src*,char*) ;
 TYPE_1__ bstr_strip (TYPE_1__) ;
 char* memchr (char*,char,size_t) ;
 int memcpy (size_t,char*,size_t) ;
 struct mp_cmd* mp_input_parse_cmd_str (int ,TYPE_1__,char*) ;
 int mp_input_queue_cmd (int ,struct mp_cmd*) ;
 size_t talloc_size (struct mp_input_src_internal*,size_t) ;

void mp_input_src_feed_cmd_text(struct mp_input_src *src, char *buf, size_t len)
{
    struct mp_input_src_internal *in = src->in;
    if (!in->cmd_buffer)
        in->cmd_buffer = talloc_size(in, CMD_BUFFER);
    while (len) {
        char *next = memchr(buf, '\n', len);
        bool term = !!next;
        next = next ? next + 1 : buf + len;
        size_t copy = next - buf;
        bool overflow = copy > CMD_BUFFER - in->cmd_buffer_size;
        if (overflow || in->drop) {
            in->cmd_buffer_size = 0;
            in->drop = overflow || !term;
            MP_WARN(src, "Dropping overlong line.\n");
        } else {
            memcpy(in->cmd_buffer + in->cmd_buffer_size, buf, copy);
            in->cmd_buffer_size += copy;
            buf += copy;
            len -= copy;
            if (term) {
                bstr s = {in->cmd_buffer, in->cmd_buffer_size};
                s = bstr_strip(s);
                struct mp_cmd *cmd = mp_input_parse_cmd_str(src->log, s, "<>");
                if (cmd)
                    mp_input_queue_cmd(src->input_ctx, cmd);
                in->cmd_buffer_size = 0;
            }
        }
    }
}
