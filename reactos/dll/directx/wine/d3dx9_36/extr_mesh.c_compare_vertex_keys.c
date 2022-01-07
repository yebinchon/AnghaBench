
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vertex_metadata {scalar_t__ key; } ;



__attribute__((used)) static int compare_vertex_keys(const void *a, const void *b)
{
    const struct vertex_metadata *left = a;
    const struct vertex_metadata *right = b;
    if (left->key == right->key)
        return 0;
    return left->key < right->key ? -1 : 1;
}
