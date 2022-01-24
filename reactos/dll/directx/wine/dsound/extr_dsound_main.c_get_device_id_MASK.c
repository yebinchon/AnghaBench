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
typedef  int /*<<< orphan*/  LPCGUID ;

/* Variables and functions */
 int /*<<< orphan*/  DSDEVID_DefaultCapture ; 
 int /*<<< orphan*/  DSDEVID_DefaultPlayback ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoiceCapture ; 
 int /*<<< orphan*/  DSDEVID_DefaultVoicePlayback ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char * FUNC2(LPCGUID pGuid)
{
    if (FUNC0(&DSDEVID_DefaultPlayback, pGuid))
        return "DSDEVID_DefaultPlayback";
    else if (FUNC0(&DSDEVID_DefaultVoicePlayback, pGuid))
        return "DSDEVID_DefaultVoicePlayback";
    else if (FUNC0(&DSDEVID_DefaultCapture, pGuid))
        return "DSDEVID_DefaultCapture";
    else if (FUNC0(&DSDEVID_DefaultVoiceCapture, pGuid))
        return "DSDEVID_DefaultVoiceCapture";
    return FUNC1(pGuid);
}