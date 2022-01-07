
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int class_code; int type; int checksum; int size; int* content; } ;
typedef TYPE_1__ xds_t ;
typedef int uint16_t ;


 int LIBCAPTION_ERROR ;
 int LIBCAPTION_OK ;
 int LIBCAPTION_READY ;
 int xds_init (TYPE_1__*) ;

int xds_decode(xds_t* xds, uint16_t cc)
{
    switch (xds->state) {
    default:
    case 0:
        xds_init(xds);
        xds->class_code = (cc & 0x0F00) >> 8;
        xds->type = (cc & 0x000F);
        xds->state = 1;
        return LIBCAPTION_OK;

    case 1:
        if (0x8F00 == (cc & 0xFF00)) {
            xds->checksum = (cc & 0x007F);
            xds->state = 0;
            return LIBCAPTION_READY;
        }

        if (xds->size < 32) {
            xds->content[xds->size + 0] = (cc & 0x7F00) >> 8;
            xds->content[xds->size + 1] = (cc & 0x007F);
            xds->size += 2;
            return LIBCAPTION_OK;
        }
    }

    xds->state = 0;
    return LIBCAPTION_ERROR;
}
