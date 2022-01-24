#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  double ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  Address ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,...) ; 
 double EchosReceived ; 
 double EchosSent ; 
 double EchosSuccessful ; 
 int /*<<< orphan*/  IDS_APPROXIMATE_RTT ; 
 int /*<<< orphan*/  IDS_STATISTICS ; 
 int /*<<< orphan*/  RTTMax ; 
 int /*<<< orphan*/  RTTMin ; 
 double RTTTotal ; 
 int /*<<< orphan*/  StdOut ; 

__attribute__((used)) static
void
FUNC1(void)
{
    ULONG EchosLost = EchosSent - EchosReceived;
    ULONG PercentLost = (ULONG)((EchosLost / (double)EchosSent) * 100.0);

    FUNC0(StdOut, IDS_STATISTICS, Address, EchosSent, EchosReceived, EchosLost, PercentLost);

    if (EchosSuccessful > 0)
    {
        ULONG RTTAverage = RTTTotal / EchosSuccessful;
        FUNC0(StdOut, IDS_APPROXIMATE_RTT, RTTMin, RTTMax, RTTAverage);
    }
}