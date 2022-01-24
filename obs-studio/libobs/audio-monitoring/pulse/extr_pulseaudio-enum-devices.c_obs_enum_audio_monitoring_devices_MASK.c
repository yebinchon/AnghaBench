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
struct enum_cb {int cont; void* data; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  pa_source_info_cb_t ;
typedef  int /*<<< orphan*/  obs_enum_audio_device_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enum_cb*) ; 
 struct enum_cb* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pulseaudio_output_info ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(obs_enum_audio_device_cb cb, void *data)
{
	struct enum_cb *ecb = FUNC1(sizeof(struct enum_cb));
	ecb->cb = cb;
	ecb->data = data;
	ecb->cont = 1;

	FUNC3();
	pa_source_info_cb_t pa_cb = pulseaudio_output_info;
	FUNC2(pa_cb, (void *)ecb);
	FUNC4();

	FUNC0(ecb);
}