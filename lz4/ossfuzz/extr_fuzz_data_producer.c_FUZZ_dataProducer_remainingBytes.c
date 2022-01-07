
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ FUZZ_dataProducer_t ;



size_t FUZZ_dataProducer_remainingBytes(FUZZ_dataProducer_t *producer){
  return producer->size;
}
