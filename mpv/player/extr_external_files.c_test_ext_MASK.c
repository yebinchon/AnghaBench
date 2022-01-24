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
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int STREAM_AUDIO ; 
 int STREAM_SUB ; 
 int /*<<< orphan*/  audio_exts ; 
 int /*<<< orphan*/  sub_exts ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(bstr ext)
{
    if (FUNC0(ext, sub_exts))
        return STREAM_SUB;
    if (FUNC0(ext, audio_exts))
        return STREAM_AUDIO;
    return -1;
}