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
struct TYPE_2__ {scalar_t__ mFormatID; } ;
struct priv {TYPE_1__ original_asbd; int /*<<< orphan*/  original_asbd_stream; int /*<<< orphan*/  audio_unit; } ;
struct ao {struct priv* priv; } ;
typedef  int /*<<< orphan*/  OSStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  kAudioStreamPropertyPhysicalFormat ; 

__attribute__((used)) static void FUNC5(struct ao *ao)
{
    struct priv *p = ao->priv;
    FUNC1(p->audio_unit);
    FUNC2(p->audio_unit);
    FUNC0(p->audio_unit);

    if (p->original_asbd.mFormatID) {
        OSStatus err = FUNC3(p->original_asbd_stream,
                              kAudioStreamPropertyPhysicalFormat,
                              &p->original_asbd);
        FUNC4("could not restore physical stream format");
    }
}