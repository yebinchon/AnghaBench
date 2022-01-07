
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int str; int size; int ptr; } ;


 int ARRAY_SIZE (int ) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void init_debug_buffer(struct debug_buffer *buffer, const char *default_string)
{
    strcpy(buffer->str, default_string);
    buffer->ptr = buffer->str;
    buffer->size = ARRAY_SIZE(buffer->str);
}
