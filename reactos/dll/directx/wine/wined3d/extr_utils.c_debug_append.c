
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int size; int * ptr; int * str; } ;


 int ARRAY_SIZE (int *) ;
 int snprintf (int *,int,char*,char const*,char const*) ;
 int strcpy (int *,char*) ;

__attribute__((used)) static void debug_append(struct debug_buffer *buffer, const char *str, const char *separator)
{
    int size;

    if (!separator || buffer->ptr == buffer->str)
        separator = "";
    size = snprintf(buffer->ptr, buffer->size, "%s%s", separator, str);
    if (size == -1 || size >= buffer->size)
    {
        buffer->size = 0;
        strcpy(&buffer->str[ARRAY_SIZE(buffer->str) - 4], "...");
        return;
    }

    buffer->ptr += size;
    buffer->size -= size;
}
