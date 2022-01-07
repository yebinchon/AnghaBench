
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_src {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int capacity; } ;
typedef int line ;


 int ASSERT (int ) ;
 int BSTR (struct buffer*) ;
 int M_FATAL ;
 int OPTION_LINE_SIZE ;
 struct buffer alloc_buf (int) ;
 int buf_clear (struct buffer*) ;
 int buf_copy (struct buffer*,struct buffer*) ;
 int buf_printf (struct buffer*,char*,char*) ;
 int buf_safe (struct buffer*,scalar_t__) ;
 int free_buf (struct buffer*) ;
 scalar_t__ in_src_get (struct in_src*,char*,int) ;
 scalar_t__ isspace (char) ;
 int msg (int ,char*,char const*) ;
 int secure_memzero (char*,int) ;
 char* string_alloc (int ,struct gc_arena*) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char*,char const*,scalar_t__) ;

__attribute__((used)) static char *
read_inline_file(struct in_src *is, const char *close_tag, struct gc_arena *gc)
{
    char line[OPTION_LINE_SIZE];
    struct buffer buf = alloc_buf(8*OPTION_LINE_SIZE);
    char *ret;
    bool endtagfound = 0;

    while (in_src_get(is, line, sizeof(line)))
    {
        char *line_ptr = line;

        while (isspace(*line_ptr))
        {
            line_ptr++;
        }
        if (!strncmp(line_ptr, close_tag, strlen(close_tag)))
        {
            endtagfound = 1;
            break;
        }
        if (!buf_safe(&buf, strlen(line)+1))
        {

            struct buffer buf2 = alloc_buf(buf.capacity * 2);
            ASSERT(buf_copy(&buf2, &buf));
            buf_clear(&buf);
            free_buf(&buf);
            buf = buf2;
        }
        buf_printf(&buf, "%s", line);
    }
    if (!endtagfound)
    {
        msg(M_FATAL, "ERROR: Endtag %s missing", close_tag);
    }
    ret = string_alloc(BSTR(&buf), gc);
    buf_clear(&buf);
    free_buf(&buf);
    secure_memzero(line, sizeof(line));
    return ret;
}
