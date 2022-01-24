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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  RX509Certificate ;
typedef  int /*<<< orphan*/  RASN1Object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

RX509Certificate *FUNC2 (const ut8 *buffer, ut32 length) {
	RX509Certificate *certificate;
	RASN1Object *object;
	if (!buffer || !length) {
		return NULL;
	}
	object = FUNC0 (buffer, length, buffer);
	certificate = FUNC1 (object);
	//object freed by r_x509_parse_certificate
	return certificate;
}