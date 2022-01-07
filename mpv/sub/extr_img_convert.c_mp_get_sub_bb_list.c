
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sub_bitmaps {int num_parts; struct sub_bitmap* parts; } ;
struct sub_bitmap {scalar_t__ dh; scalar_t__ y; scalar_t__ dw; scalar_t__ x; } ;
struct mp_rect {int x0; int x1; int y0; int y1; scalar_t__ member_3; scalar_t__ member_2; scalar_t__ member_1; scalar_t__ member_0; } ;


 int MERGE_RC_PIXELS ;
 int mp_rect_union (struct mp_rect*,struct mp_rect*) ;
 int remove_intersecting_rcs (struct mp_rect*,int*) ;

int mp_get_sub_bb_list(struct sub_bitmaps *sbs, struct mp_rect *out_rc_list,
                       int rc_list_count)
{
    int M = MERGE_RC_PIXELS;
    int num_rc = 0;
    for (int n = 0; n < sbs->num_parts; n++) {
        struct sub_bitmap *sb = &sbs->parts[n];
        struct mp_rect bb = {sb->x, sb->y, sb->x + sb->dw, sb->y + sb->dh};
        bool intersects = 0;
        for (int r = 0; r < num_rc; r++) {
            struct mp_rect *rc = &out_rc_list[r];
            if ((bb.x0 - M <= rc->x1 && bb.x1 + M >= rc->x0 &&
                 bb.y0 - M <= rc->y1 && bb.y1 + M >= rc->y0) ||
                num_rc == rc_list_count)
            {
                mp_rect_union(rc, &bb);
                intersects = 1;
                break;
            }
        }
        if (!intersects) {
            out_rc_list[num_rc++] = bb;
            remove_intersecting_rcs(out_rc_list, &num_rc);
        }
    }
    remove_intersecting_rcs(out_rc_list, &num_rc);
    return num_rc;
}
