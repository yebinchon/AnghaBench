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
struct enc_encoder {int /*<<< orphan*/  packet_buffer; scalar_t__ aframe; scalar_t__ context; scalar_t__* samples; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct enc_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct enc_encoder *enc = data;

	if (enc->samples[0])
		FUNC1(&enc->samples[0]);
	if (enc->context)
		FUNC2(enc->context);
	if (enc->aframe)
		FUNC0(&enc->aframe);

	FUNC4(enc->packet_buffer);
	FUNC3(enc);
}