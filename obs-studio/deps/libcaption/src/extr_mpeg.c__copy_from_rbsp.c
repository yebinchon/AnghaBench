
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t _find_emulated (int*,size_t) ;
 int memcpy (int*,int*,size_t) ;

size_t _copy_from_rbsp(uint8_t* data, uint8_t* payloadData, size_t payloadSize)
{
    size_t total = 0;

    while (payloadSize) {
        size_t bytes = _find_emulated(payloadData, payloadSize);

        if (bytes > payloadSize) {
            return 0;
        }

        memcpy(data, payloadData, bytes);

        if (bytes == payloadSize) {
            return total + bytes;
        }

        data[bytes] = 3;
        data += bytes + 1;
        total += bytes + 1;
        payloadData += bytes;
        payloadSize -= bytes;
    }

    return total;
}
