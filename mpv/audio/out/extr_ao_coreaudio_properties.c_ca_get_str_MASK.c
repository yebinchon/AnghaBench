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
typedef  int /*<<< orphan*/  ca_sel ;
typedef  int /*<<< orphan*/  ca_scope ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  AudioObjectID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void**) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coreaudio_error ; 

OSStatus FUNC4(AudioObjectID id, ca_scope scope, ca_sel selector,
                    char **data)
{
    CFStringRef string;
    OSStatus err =
        FUNC2(id, scope, selector, sizeof(CFStringRef), (void **)&string);
    FUNC1(coreaudio_error);

    *data = FUNC3(string);
    FUNC0(string);
coreaudio_error:
    return err;
}