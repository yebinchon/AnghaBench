
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int append (struct buf*,char const) ;

__attribute__((used)) static void ass_to_plaintext(struct buf *b, const char *in)
{
    bool in_tag = 0;
    const char *open_tag_pos = ((void*)0);
    bool in_drawing = 0;
    while (*in) {
        if (in_tag) {
            if (in[0] == '}') {
                in += 1;
                in_tag = 0;
            } else if (in[0] == '\\' && in[1] == 'p') {
                in += 2;


                in_drawing = 0;
                while (in[0] >= '0' && in[0] <= '9') {
                    if (in[0] != '0')
                        in_drawing = 1;
                    in += 1;
                }
            } else {
                in += 1;
            }
        } else {
            if (in[0] == '\\' && (in[1] == 'N' || in[1] == 'n')) {
                in += 2;
                append(b, '\n');
            } else if (in[0] == '\\' && in[1] == 'h') {
                in += 2;
                append(b, ' ');
            } else if (in[0] == '{') {
                open_tag_pos = in;
                in += 1;
                in_tag = 1;
            } else {
                if (!in_drawing)
                    append(b, in[0]);
                in += 1;
            }
        }
    }

    if (in_tag) {
        while (*open_tag_pos)
            append(b, *open_tag_pos++);
    }
}
