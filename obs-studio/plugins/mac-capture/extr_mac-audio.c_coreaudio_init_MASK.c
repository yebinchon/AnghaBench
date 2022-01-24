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
struct coreaudio_data {int au_initialized; int /*<<< orphan*/  device_name; int /*<<< orphan*/  unit; int /*<<< orphan*/  device_id; } ;
typedef  int /*<<< orphan*/  OSStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IO_TYPE_INPUT ; 
 int /*<<< orphan*/  IO_TYPE_OUTPUT ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SCOPE_GLOBAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct coreaudio_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct coreaudio_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  kAudioOutputUnitProperty_CurrentDevice ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC13(struct coreaudio_data *ca)
{
	OSStatus stat;

	if (ca->au_initialized)
		return true;

	if (!FUNC11(ca))
		return false;
	if (!FUNC3(ca))
		return false;
	if (!FUNC7(ca))
		return false;

	stat = FUNC10(ca, IO_TYPE_INPUT, true);
	if (!FUNC2(stat, ca, "coreaudio_init", "enable input io"))
		goto fail;

	stat = FUNC10(ca, IO_TYPE_OUTPUT, false);
	if (!FUNC2(stat, ca, "coreaudio_init", "disable output io"))
		goto fail;

	stat = FUNC12(ca->unit, kAudioOutputUnitProperty_CurrentDevice,
			    SCOPE_GLOBAL, 0, &ca->device_id,
			    sizeof(ca->device_id));
	if (!FUNC2(stat, ca, "coreaudio_init", "set current device"))
		goto fail;

	if (!FUNC5(ca))
		goto fail;
	if (!FUNC4(ca))
		goto fail;
	if (!FUNC6(ca))
		goto fail;

	stat = FUNC0(ca->unit);
	if (!FUNC2(stat, ca, "coreaudio_initialize", "initialize"))
		goto fail;

	if (!FUNC8(ca))
		goto fail;

	FUNC1(LOG_INFO, "coreaudio: device '%s' initialized", ca->device_name);
	return ca->au_initialized;

fail:
	FUNC9(ca);
	return false;
}