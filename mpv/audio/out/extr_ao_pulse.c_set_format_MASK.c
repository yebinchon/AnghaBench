#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pa_channel_map {int dummy; } ;
struct format_map {scalar_t__ mp_format; int /*<<< orphan*/  pa_format; } ;
struct TYPE_9__ {int /*<<< orphan*/  num; } ;
struct ao {scalar_t__ format; scalar_t__ samplerate; TYPE_1__ channels; } ;
struct TYPE_10__ {scalar_t__ encoding; } ;
typedef  TYPE_2__ pa_format_info ;

/* Variables and functions */
 scalar_t__ AF_FORMAT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 scalar_t__ PA_ENCODING_PCM ; 
 scalar_t__ PA_RATE_MAX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct format_map* format_maps ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct pa_channel_map*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ao*,struct pa_channel_map*) ; 

__attribute__((used)) static bool FUNC9(struct ao *ao, pa_format_info *format)
{
    ao->format = FUNC1(ao->format);

    format->encoding = FUNC2(ao->format);
    if (format->encoding == PA_ENCODING_PCM) {
        const struct format_map *fmt_map = format_maps;

        while (fmt_map->mp_format != ao->format) {
            if (fmt_map->mp_format == AF_FORMAT_UNKNOWN) {
                FUNC0(ao, "Unsupported format, using default\n");
                fmt_map = format_maps;
                break;
            }
            fmt_map++;
        }
        ao->format = fmt_map->mp_format;

        FUNC6(format, fmt_map->pa_format);
    }

    struct pa_channel_map map;

    if (!FUNC8(ao, &map))
        return false;

    FUNC5(format, ao->samplerate);
    FUNC4(format, ao->channels.num);
    FUNC3(format, &map);

    return ao->samplerate < PA_RATE_MAX && FUNC7(format);
}