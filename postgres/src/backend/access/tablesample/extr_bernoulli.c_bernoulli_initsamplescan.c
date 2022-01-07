
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tsm_state; } ;
typedef TYPE_1__ SampleScanState ;
typedef int BernoulliSamplerData ;


 int palloc0 (int) ;

__attribute__((used)) static void
bernoulli_initsamplescan(SampleScanState *node, int eflags)
{
 node->tsm_state = palloc0(sizeof(BernoulliSamplerData));
}
