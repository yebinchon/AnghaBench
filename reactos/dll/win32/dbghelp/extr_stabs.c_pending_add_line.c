
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pending_list {size_t num; TYPE_3__* objs; } ;
struct TYPE_4__ {int source_idx; int line_num; unsigned long offset; unsigned long load_offset; } ;
struct TYPE_5__ {TYPE_1__ line; } ;
struct TYPE_6__ {TYPE_2__ u; int tag; } ;


 int PENDING_LINE ;
 int pending_make_room (struct pending_list*) ;

__attribute__((used)) static inline void pending_add_line(struct pending_list* pending, int source_idx,
                                    int line_num, unsigned long offset,
                                    unsigned long load_offset)
{
    pending_make_room(pending);
    pending->objs[pending->num].tag = PENDING_LINE;
    pending->objs[pending->num].u.line.source_idx = source_idx;
    pending->objs[pending->num].u.line.line_num = line_num;
    pending->objs[pending->num].u.line.offset = offset;
    pending->objs[pending->num].u.line.load_offset = load_offset;
    pending->num++;
}
