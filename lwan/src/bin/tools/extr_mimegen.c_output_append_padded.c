
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int EINVAL ;
 int output_append_full (struct output*,char const*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int output_append_padded(struct output *output, const char *str)
{
    size_t str_len = strlen(str);

    if (str_len <= 8) {
        int r = output_append_full(output, str, str_len);
        if (r < 0)
            return r;

        if (str_len != 8)
            return output_append_full(output, "\0\0\0\0\0\0\0\0", 8 - str_len);

        return 0;
    }

    return -EINVAL;
}
