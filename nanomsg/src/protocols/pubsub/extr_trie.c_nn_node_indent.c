
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nn_node_putchar (char) ;

void nn_node_indent (int indent)
{
    int i;

    for (i = 0; i != indent * 4; ++i)
        nn_node_putchar (' ');
}
