
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; int * data; int length; } ;
typedef TYPE_1__ byteQueue_t ;
typedef int byteQueueIndex_t ;



void bytequeue_init(byteQueue_t* queue, uint8_t* dataArray, byteQueueIndex_t arrayLen) {
    queue->length = arrayLen;
    queue->data = dataArray;
    queue->start = queue->end = 0;
}
