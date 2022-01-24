#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wasapi_sample_fmt {scalar_t__ mp_format; } ;
struct mp_chmap {int dummy; } ;
struct ao {int /*<<< orphan*/  format; } ;
struct TYPE_6__ {scalar_t__ wBitsPerSample; } ;
struct TYPE_7__ {TYPE_1__ Format; } ;
typedef  TYPE_2__ WAVEFORMATEXTENSIBLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct wasapi_sample_fmt*,int,struct mp_chmap*) ; 
 scalar_t__ FUNC2 (struct ao*,TYPE_2__*) ; 
 int /*<<< orphan*/  wasapi_formats ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wasapi_sample_fmt*) ; 

__attribute__((used)) static bool FUNC4(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat,
                                  int samplerate, struct mp_chmap *channels)
{
    struct wasapi_sample_fmt alt_formats[FUNC0(wasapi_formats)];
    FUNC3(ao->format, alt_formats);
    for (int n = 0; alt_formats[n].mp_format; n++) {
        FUNC1(wformat, &alt_formats[n], samplerate, channels);
        if (FUNC2(ao, wformat))
            return true;
    }

    wformat->Format.wBitsPerSample = 0;
    return false;
}