
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scanline {int dummy; } ;
struct frame {TYPE_1__* scanlines; } ;
struct TYPE_2__ {void** right; void** left; } ;
typedef void* POS ;


 int MAX_SEGS_PER_LINE ;
 struct frame* malloc (int) ;

__attribute__((used)) static struct frame *frame_mk(int width, int height)
{
    struct frame *fr = malloc(sizeof(struct frame) +
                              (sizeof(struct scanline) * ((size_t)height - 1)));
    POS half_width = (POS)(width / 2);
    int x, y;

    if (!fr)
        return ((void*)0);

    for (y = 0; y < height; y++) {
        for (x = 0; x < MAX_SEGS_PER_LINE; x++) {
            fr->scanlines[y].left[x] = half_width;
            fr->scanlines[y].right[x] = half_width;
        }
    }

    return fr;
}
