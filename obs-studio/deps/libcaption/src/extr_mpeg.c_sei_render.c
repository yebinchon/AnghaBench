
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int head; } ;
typedef TYPE_1__ sei_t ;
typedef int sei_message_t ;


 size_t _copy_from_rbsp (int*,int*,int) ;
 int* sei_message_data (int *) ;
 int * sei_message_head (TYPE_1__*) ;
 int * sei_message_next (int *) ;
 scalar_t__ sei_message_size (int *) ;
 int sei_message_type (int *) ;

size_t sei_render(sei_t* sei, uint8_t* data)
{
    if (!sei || !sei->head) {
        return 0;
    }

    size_t escaped_size, size = 2;
    sei_message_t* msg;
    (*data) = 6;
    ++data;

    for (msg = sei_message_head(sei); msg; msg = sei_message_next(msg)) {
        int payloadType = sei_message_type(msg);
        int payloadSize = (int)sei_message_size(msg);
        uint8_t* payloadData = sei_message_data(msg);

        while (255 <= payloadType) {
            (*data) = 255;
            ++data;
            ++size;
            payloadType -= 255;
        }

        (*data) = payloadType;
        ++data;
        ++size;

        while (255 <= payloadSize) {
            (*data) = 255;
            ++data;
            ++size;
            payloadSize -= 255;
        }

        (*data) = payloadSize;
        ++data;
        ++size;

        if (0 >= (escaped_size = _copy_from_rbsp(data, payloadData, payloadSize))) {
            return 0;
        }

        data += escaped_size;
        size += escaped_size;
    }


    (*data) = 0x80;
    return size;
}
