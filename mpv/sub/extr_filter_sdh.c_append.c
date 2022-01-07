
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct buffer {scalar_t__ pos; int length; char* string; } ;



__attribute__((used)) static inline int append(struct sd *sd, struct buffer *buf, char c)
{
    if (buf->pos >= 0 && buf->pos < buf->length) {
        buf->string[buf->pos++] = c;
    } else {

        if (c == '\0')
            buf->string[buf->length - 1] = c;
    }
    return c;
}
