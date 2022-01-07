
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int begun; int done; int haveblock; int ss; scalar_t__ donetuples; } ;
typedef TYPE_1__ SampleScanState ;


 int ExecScanReScan (int *) ;

void
ExecReScanSampleScan(SampleScanState *node)
{

 node->begun = 0;
 node->done = 0;
 node->haveblock = 0;
 node->donetuples = 0;

 ExecScanReScan(&node->ss);
}
