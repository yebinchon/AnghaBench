
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_transform {scalar_t__** m; scalar_t__* t; } ;



__attribute__((used)) static inline bool gl_transform_eq(struct gl_transform a, struct gl_transform b)
{
    for (int x = 0; x < 2; x++) {
        for (int y = 0; y < 2; y++) {
            if (a.m[x][y] != b.m[x][y])
                return 0;
        }
    }

    return a.t[0] == b.t[0] && a.t[1] == b.t[1];
}
