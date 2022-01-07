
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_imgfmt_desc {int num_planes; int** components; } ;



__attribute__((used)) static int find_comp(struct ra_imgfmt_desc *desc, int component)
{
    int cur = 0;
    for (int n = 0; n < desc->num_planes; n++) {
        for (int i = 0; i < 4; i++) {
            if (desc->components[n][i]) {
                if (desc->components[n][i] == component)
                    return cur;
                cur++;
            }
        }
    }
    return -1;
}
