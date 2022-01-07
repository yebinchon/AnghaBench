
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sei_t ;
typedef int sei_msgtype_t ;
typedef int sei_message_t ;
typedef int libcaption_stauts_t ;


 int LIBCAPTION_ERROR ;
 int LIBCAPTION_OK ;
 size_t _copy_to_rbsp (int*,size_t,int const*,size_t) ;
 int sei_init (int *,double) ;
 int sei_message_append (int *,int *) ;
 int* sei_message_data (int *) ;
 int * sei_message_new (int ,int ,size_t) ;

libcaption_stauts_t sei_parse(sei_t* sei, const uint8_t* data, size_t size, double timestamp)
{
    sei_init(sei, timestamp);
    int ret = 0;


    while (1 < size) {
        size_t payloadType = 0;
        size_t payloadSize = 0;

        while (0 < size && 255 == (*data)) {
            payloadType += 255;
            ++data, --size;
        }

        if (0 == size) {
            return LIBCAPTION_ERROR;
        }

        payloadType += (*data);
        ++data, --size;

        while (0 < size && 255 == (*data)) {
            payloadSize += 255;
            ++data, --size;
        }

        if (0 == size) {
            return LIBCAPTION_ERROR;
        }

        payloadSize += (*data);
        ++data, --size;

        if (payloadSize) {
            sei_message_t* msg = sei_message_new((sei_msgtype_t)payloadType, 0, payloadSize);
            uint8_t* payloadData = sei_message_data(msg);
            size_t bytes = _copy_to_rbsp(payloadData, payloadSize, data, size);
            sei_message_append(sei, msg);

            if (bytes < payloadSize) {
                return LIBCAPTION_ERROR;
            }

            data += bytes;
            size -= bytes;
            ++ret;
        }
    }


    return LIBCAPTION_OK;
}
