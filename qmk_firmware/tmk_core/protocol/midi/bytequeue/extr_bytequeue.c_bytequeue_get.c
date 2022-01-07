
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t start; size_t length; int * data; } ;
typedef TYPE_1__ byteQueue_t ;
typedef size_t byteQueueIndex_t ;



uint8_t bytequeue_get(byteQueue_t* queue, byteQueueIndex_t index) { return queue->data[(queue->start + index) % queue->length]; }
