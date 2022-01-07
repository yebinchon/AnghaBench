
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FUZZ_dataProducer_t ;


 int free (int *) ;

void FUZZ_dataProducer_free(FUZZ_dataProducer_t *producer) { free(producer); }
