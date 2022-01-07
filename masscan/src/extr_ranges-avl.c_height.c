
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RavlNode {int height; } ;



__attribute__((used)) static int
height(const struct RavlNode *node)
{
    if (node == ((void*)0))
        return -1;
    else
        return node->height;
}
