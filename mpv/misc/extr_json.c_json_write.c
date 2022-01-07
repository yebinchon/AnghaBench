
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;


 int json_append_str (char**,struct mpv_node*,int) ;

int json_write(char **dst, struct mpv_node *src)
{
    return json_append_str(dst, src, -1);
}
