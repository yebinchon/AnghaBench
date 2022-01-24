#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int num; } ;
struct ao {scalar_t__ format; int samplerate; int bps; TYPE_1__ channels; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AF_FORMAT_FLOAT ; 
 int WAV_ID_DATA ; 
 int WAV_ID_FLOAT_PCM ; 
 int WAV_ID_FMT ; 
 int WAV_ID_FORMAT_EXTENSIBLE ; 
 int WAV_ID_PCM ; 
 int WAV_ID_RIFF ; 
 int WAV_ID_WAVE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct ao *ao, FILE *fp, uint64_t data_length)
{
    uint16_t fmt = ao->format == AF_FORMAT_FLOAT ? WAV_ID_FLOAT_PCM : WAV_ID_PCM;
    int bits = FUNC0(ao->format) * 8;

    // Master RIFF chunk
    FUNC2(WAV_ID_RIFF, fp);
    // RIFF chunk size: 'WAVE' + 'fmt ' + 4 + 40 +
    // data chunk hdr (8) + data length
    FUNC2(12 + 40 + 8 + data_length, fp);
    FUNC2(WAV_ID_WAVE, fp);

    // Format chunk
    FUNC2(WAV_ID_FMT, fp);
    FUNC2(40, fp);
    FUNC1(WAV_ID_FORMAT_EXTENSIBLE, fp);
    FUNC1(ao->channels.num, fp);
    FUNC2(ao->samplerate, fp);
    FUNC2(ao->bps, fp);
    FUNC1(ao->channels.num * (bits / 8), fp);
    FUNC1(bits, fp);

    // Extension chunk
    FUNC1(22, fp);
    FUNC1(bits, fp);
    FUNC2(FUNC3(&ao->channels), fp);
    // 2 bytes format + 14 bytes guid
    FUNC2(fmt, fp);
    FUNC2(0x00100000, fp);
    FUNC2(0xAA000080, fp);
    FUNC2(0x719B3800, fp);

    // Data chunk
    FUNC2(WAV_ID_DATA, fp);
    FUNC2(data_length, fp);
}