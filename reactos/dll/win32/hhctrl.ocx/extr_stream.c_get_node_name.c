
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buf; } ;
typedef TYPE_1__ strbuf_t ;


 int isspace (char const) ;
 int strbuf_append (TYPE_1__*,char*,int) ;
 int strbuf_zero (TYPE_1__*) ;

void get_node_name(strbuf_t *node, strbuf_t *name)
{
    const char *ptr = node->buf+1;

    strbuf_zero(name);

    while(*ptr != '>' && !isspace(*ptr))
        ptr++;

    strbuf_append(name, node->buf+1, ptr-node->buf-1);
    strbuf_append(name, "", 1);
}
