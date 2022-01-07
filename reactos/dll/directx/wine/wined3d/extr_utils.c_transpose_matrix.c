
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_matrix {int _11; } ;



void transpose_matrix(struct wined3d_matrix *out, const struct wined3d_matrix *m)
{
    struct wined3d_matrix temp;
    unsigned int i, j;

    for (i = 0; i < 4; ++i)
        for (j = 0; j < 4; ++j)
            (&temp._11)[4 * j + i] = (&m->_11)[4 * i + j];

    *out = temp;
}
