
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char php_last_char ;

__attribute__((used)) static size_t readline_shell_ub_write(const char *str, size_t str_length)
{



 php_last_char = str[str_length-1];

 return (size_t) -1;
}
