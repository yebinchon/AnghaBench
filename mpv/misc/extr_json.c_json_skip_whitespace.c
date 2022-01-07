
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eat_ws (char**) ;

void json_skip_whitespace(char **src)
{
    eat_ws(src);
}
