
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct encoder_context {TYPE_2__* options; TYPE_1__* encoder; } ;
struct TYPE_4__ {double voffset; double aoffset; } ;
struct TYPE_3__ {int codec_type; } ;





double encoder_get_offset(struct encoder_context *p)
{
    switch (p->encoder->codec_type) {
    case 128: return p->options->voffset;
    case 129: return p->options->aoffset;
    default: return 0;
    }
}
