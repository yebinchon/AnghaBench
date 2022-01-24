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
struct sidechain_prop_info {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct compressor_data {int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ATK_MS ; 
 int /*<<< orphan*/  MAX_OUTPUT_GAIN_DB ; 
 int /*<<< orphan*/  MAX_RATIO ; 
 int /*<<< orphan*/  MAX_RLS_MS ; 
 int /*<<< orphan*/  MAX_THRESHOLD_DB ; 
 int /*<<< orphan*/  MIN_ATK_RLS_MS ; 
 int /*<<< orphan*/  MIN_OUTPUT_GAIN_DB ; 
 int /*<<< orphan*/  MIN_RATIO ; 
 int /*<<< orphan*/  MIN_THRESHOLD_DB ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  S_ATTACK_TIME ; 
 int /*<<< orphan*/  S_OUTPUT_GAIN ; 
 int /*<<< orphan*/  S_RATIO ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_SIDECHAIN_SOURCE ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 int /*<<< orphan*/  TEXT_ATTACK_TIME ; 
 int /*<<< orphan*/  TEXT_OUTPUT_GAIN ; 
 int /*<<< orphan*/  TEXT_RATIO ; 
 int /*<<< orphan*/  TEXT_RELEASE_TIME ; 
 int /*<<< orphan*/  TEXT_SIDECHAIN_SOURCE ; 
 int /*<<< orphan*/  TEXT_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  add_sources ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sidechain_prop_info*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static obs_properties_t *FUNC11(void *data)
{
	struct compressor_data *cd = data;
	obs_properties_t *props = FUNC7();
	obs_source_t *parent = NULL;
	obs_property_t *p;

	if (cd)
		parent = FUNC2(cd->context);

	p = FUNC4(props, S_RATIO, TEXT_RATIO,
					    MIN_RATIO, MAX_RATIO, 0.5);
	FUNC8(p, ":1");
	p = FUNC4(props, S_THRESHOLD, TEXT_THRESHOLD,
					    MIN_THRESHOLD_DB, MAX_THRESHOLD_DB,
					    0.1);
	FUNC8(p, " dB");
	p = FUNC5(props, S_ATTACK_TIME,
					  TEXT_ATTACK_TIME, MIN_ATK_RLS_MS,
					  MAX_ATK_MS, 1);
	FUNC9(p, " ms");
	p = FUNC5(props, S_RELEASE_TIME,
					  TEXT_RELEASE_TIME, MIN_ATK_RLS_MS,
					  MAX_RLS_MS, 1);
	FUNC9(p, " ms");
	p = FUNC4(props, S_OUTPUT_GAIN,
					    TEXT_OUTPUT_GAIN,
					    MIN_OUTPUT_GAIN_DB,
					    MAX_OUTPUT_GAIN_DB, 0.1);
	FUNC8(p, " dB");

	obs_property_t *sources = FUNC6(
		props, S_SIDECHAIN_SOURCE, TEXT_SIDECHAIN_SOURCE,
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

	FUNC10(sources, FUNC3("None"), "none");

	struct sidechain_prop_info info = {sources, parent};
	FUNC1(add_sources, &info);

	FUNC0(data);
	return props;
}