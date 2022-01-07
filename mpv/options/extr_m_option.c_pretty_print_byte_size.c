
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;
typedef int int64_t ;


 char* format_file_size (int ) ;

__attribute__((used)) static char *pretty_print_byte_size(const m_option_t *opt, const void *val)
{
    return format_file_size(*(int64_t *)val);
}
