
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int dheight; int dwidth; struct priv* priv; } ;
struct priv {TYPE_2__* opts; TYPE_1__* frame; int sheight; int swidth; } ;
struct TYPE_4__ {scalar_t__ algo; int term256; } ;
struct TYPE_3__ {int * stride; int * planes; } ;


 scalar_t__ ALGO_PLAIN ;
 int fflush (int ) ;
 int stdout ;
 int write_half_blocks (int ,int ,int ,int ,int ,int ,int ) ;
 int write_plain (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->opts->algo == ALGO_PLAIN) {
        write_plain(
            vo->dwidth, vo->dheight, p->swidth, p->sheight,
            p->frame->planes[0], p->frame->stride[0],
            p->opts->term256);
    } else {
        write_half_blocks(
            vo->dwidth, vo->dheight, p->swidth, p->sheight,
            p->frame->planes[0], p->frame->stride[0],
            p->opts->term256);
    }
    fflush(stdout);
}
