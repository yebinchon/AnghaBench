
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {size_t used; size_t capacity; char* ptr; } ;


 int errno ;
 int memcpy (char*,char const*,size_t) ;
 char* realloc (char*,int) ;

__attribute__((used)) static int
output_append_full(struct output *output, const char *str, size_t str_len)
{
    size_t total_size = output->used + str_len;

    if (total_size >= output->capacity) {
        char *tmp;

        while (total_size >= output->capacity)
            output->capacity *= 2;

        tmp = realloc(output->ptr, output->capacity);
        if (!tmp)
            return -errno;

        output->ptr = tmp;
    }

    memcpy(output->ptr + output->used, str, str_len);
    output->used = total_size;

    return 0;
}
