
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
struct TYPE_4__ {char* start; } ;
typedef TYPE_1__ bstr ;


 TYPE_1__ bstr0 (char*) ;
 int json_append (TYPE_1__*,struct mpv_node*,int) ;

__attribute__((used)) static int json_append_str(char **dst, struct mpv_node *src, int indent)
{
    bstr buffer = bstr0(*dst);
    int r = json_append(&buffer, src, indent);
    *dst = buffer.start;
    return r;
}
