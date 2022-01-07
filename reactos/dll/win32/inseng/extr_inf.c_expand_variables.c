
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {int dummy; } ;


 int expand_variables_buffer (struct inf_file*,char const*,char*) ;
 char* heap_alloc (int) ;

__attribute__((used)) static char *expand_variables(struct inf_file *inf, const char *str)
{
    char *buffer;
    int len;

    len = expand_variables_buffer(inf, str, ((void*)0));
    buffer = heap_alloc(len);
    if (!len) return ((void*)0);

    expand_variables_buffer(inf, str, buffer);
    return buffer;
}
