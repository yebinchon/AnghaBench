
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double ULONG ;


 int Address ;
 int ConResPrintf (int ,int ,int ,double,double,...) ;
 double EchosReceived ;
 double EchosSent ;
 double EchosSuccessful ;
 int IDS_APPROXIMATE_RTT ;
 int IDS_STATISTICS ;
 int RTTMax ;
 int RTTMin ;
 double RTTTotal ;
 int StdOut ;

__attribute__((used)) static
void
PrintStats(void)
{
    ULONG EchosLost = EchosSent - EchosReceived;
    ULONG PercentLost = (ULONG)((EchosLost / (double)EchosSent) * 100.0);

    ConResPrintf(StdOut, IDS_STATISTICS, Address, EchosSent, EchosReceived, EchosLost, PercentLost);

    if (EchosSuccessful > 0)
    {
        ULONG RTTAverage = RTTTotal / EchosSuccessful;
        ConResPrintf(StdOut, IDS_APPROXIMATE_RTT, RTTMin, RTTMax, RTTAverage);
    }
}
