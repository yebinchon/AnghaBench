
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct point2d {scalar_t__ corner; int const pos; } ;
struct outline {int count; struct point2d* items; } ;
struct cos_table {int cos_half; } ;
typedef int D3DXVECTOR2 ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ POINTTYPE_CORNER ;
 scalar_t__ POINTTYPE_CURVE_END ;
 void* POINTTYPE_CURVE_MIDDLE ;
 void* POINTTYPE_CURVE_START ;
 scalar_t__ TRUE ;
 scalar_t__ is_direction_similar (int *,int *,int ) ;
 int unit_vec2 (int *,int const*,int const*) ;

__attribute__((used)) static BOOL attempt_line_merge(struct outline *outline,
                               int pt_index,
                               const D3DXVECTOR2 *nextpt,
                               BOOL to_curve,
                               const struct cos_table *table)
{
    D3DXVECTOR2 curdir, lastdir;
    struct point2d *prevpt, *pt;
    BOOL ret = FALSE;

    pt = &outline->items[pt_index];
    pt_index = (pt_index - 1 + outline->count) % outline->count;
    prevpt = &outline->items[pt_index];

    if (to_curve)
        pt->corner = pt->corner != POINTTYPE_CORNER ? POINTTYPE_CURVE_MIDDLE : POINTTYPE_CURVE_START;

    if (outline->count < 2)
        return FALSE;


    unit_vec2(&lastdir, &prevpt->pos, &pt->pos);
    unit_vec2(&curdir, &pt->pos, nextpt);
    if (is_direction_similar(&lastdir, &curdir, table->cos_half))
    {
        outline->count--;
        if (pt->corner == POINTTYPE_CURVE_END)
            prevpt->corner = pt->corner;
        if (prevpt->corner == POINTTYPE_CURVE_END && to_curve)
            prevpt->corner = POINTTYPE_CURVE_MIDDLE;
        pt = prevpt;

        ret = TRUE;
        if (outline->count < 2)
            return ret;

        pt_index = (pt_index - 1 + outline->count) % outline->count;
        prevpt = &outline->items[pt_index];
        unit_vec2(&lastdir, &prevpt->pos, &pt->pos);
        unit_vec2(&curdir, &pt->pos, nextpt);
    }
    return ret;
}
