
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int testTime; int rttAvg; int rttMax; int rttMin; int numSuccsessPings; int numSendsPings; } ;
typedef TYPE_1__ _PingReportResponse_t ;
struct TYPE_6__ {int TestTime; int AvgRoundTime; int MaxRoundTime; int MinRoundTime; int PacketsReceived; int PacketsSent; } ;
typedef TYPE_2__ SlPingReport_t ;



void CopyPingResultsToReport(_PingReportResponse_t *pResults,SlPingReport_t *pReport)
{
    pReport->PacketsSent = pResults->numSendsPings;
    pReport->PacketsReceived = pResults->numSuccsessPings;
    pReport->MinRoundTime = pResults->rttMin;
    pReport->MaxRoundTime = pResults->rttMax;
    pReport->AvgRoundTime = pResults->rttAvg;
    pReport->TestTime = pResults->testTime;
}
