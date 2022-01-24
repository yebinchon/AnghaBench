#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int StartOfFile; int nAvgBytesPerSec; } ;
typedef  TYPE_1__ WAVEParserImpl ;
typedef  int LONGLONG ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static LONGLONG FUNC1(WAVEParserImpl *This, LONGLONG bytepos)
{
    LONGLONG duration = FUNC0(bytepos - This->StartOfFile);
    duration *= 10000000;
    duration /= This->nAvgBytesPerSec;

    return duration;
}