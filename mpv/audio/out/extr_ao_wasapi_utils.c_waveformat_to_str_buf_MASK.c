#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wasapi_sample_fmt {int bits; int used_msb; int /*<<< orphan*/  mp_format; } ;
struct mp_chmap {int dummy; } ;
struct TYPE_5__ {scalar_t__ nSamplesPerSec; } ;
typedef  TYPE_1__ WAVEFORMATEX ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_chmap*,TYPE_1__*) ; 
 struct wasapi_sample_fmt FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*,char*,int,int,unsigned int) ; 

__attribute__((used)) static char *FUNC5(char *buf, size_t buf_size, WAVEFORMATEX *wf)
{
    struct mp_chmap channels;
    FUNC1(&channels, wf);

    struct wasapi_sample_fmt format = FUNC2(wf);

    FUNC4(buf, buf_size, "%s %s (%d/%d bits) @ %uhz",
             FUNC3(&channels),
             FUNC0(format.mp_format), format.bits, format.used_msb,
             (unsigned) wf->nSamplesPerSec);
    return buf;
}