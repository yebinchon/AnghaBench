
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint32_t ;
struct TYPE_3__ {size_t size; int * data; } ;
typedef TYPE_1__ FUZZ_dataProducer_t ;



uint32_t FUZZ_dataProducer_retrieve32(FUZZ_dataProducer_t *producer) {
    const uint8_t* data = producer->data;
    const size_t size = producer->size;
    if (size == 0) {
        return 0;
    } else if (size < 4) {
        producer->size -= 1;
        return (uint32_t)data[size - 1];
    } else {
        producer->size -= 4;
        return *(data + size - 4);
    }
}
