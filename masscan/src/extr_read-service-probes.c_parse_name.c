
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MALLOC (size_t) ;
 scalar_t__ isspace (char const) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
parse_name(const char *line, size_t *r_offset, size_t line_length)
{
    size_t name_offset = *r_offset;
    size_t name_length;
    char *result;


    while (*r_offset < line_length && !isspace(line[*r_offset]))
        (*r_offset)++;
    name_length = *r_offset - name_offset;
    if (name_length == 0)
        return 0;


    while (*r_offset < line_length && isspace(line[*r_offset]))
        (*r_offset)++;


    result = MALLOC(name_length+1);
    memcpy(result, line + name_offset, name_length+1);
    result[name_length] = '\0';

    return result;
}
