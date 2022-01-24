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
struct audio_data {int dummy; } ;
typedef  int /*<<< orphan*/  obs_volmeter_t ;

/* Variables and functions */
 int FUNC0 (struct audio_data const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct audio_data const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct audio_data const*,int) ; 

__attribute__((used)) static void FUNC3(obs_volmeter_t *volmeter,
					const struct audio_data *data)
{
	int nr_channels = FUNC0(data);

	FUNC2(volmeter, data, nr_channels);
	FUNC1(volmeter, data, nr_channels);
}