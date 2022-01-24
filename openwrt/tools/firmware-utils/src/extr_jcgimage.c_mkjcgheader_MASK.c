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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  long uLong ;
typedef  scalar_t__ time_t ;
struct jcg_header {void* jh_hcrc; void* jh_dcrc; void* jh_minor; void* jh_major; void* jh_time; void* jh_type; void* jh_magic; } ;

/* Variables and functions */
 long JH_MAGIC ; 
 void* Z_NULL ; 
 long FUNC0 (long,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 void* FUNC2 (long) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct jcg_header*,int /*<<< orphan*/ ,int) ; 
 int source_date_epoch ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 

void
FUNC7(struct jcg_header *h, size_t psize, char *version)
{
	uLong crc;
	uint16_t major = 0, minor = 0;
	void *payload = (void *)h + sizeof(*h);
	time_t t;

	if (source_date_epoch != -1)
		t = source_date_epoch;
	else if ((FUNC6(&t) == (time_t)(-1)))
		FUNC1(1, "time call failed");


	if (version != NULL)
		if (FUNC5(version, "%hu.%hu", &major, &minor) != 2)
			FUNC1(1, "cannot parse version \"%s\"", version);

	FUNC4(h, 0, sizeof(*h));
	h->jh_magic = FUNC2(JH_MAGIC);
	h->jh_type  = FUNC2(1);
	h->jh_time  = FUNC2(t);
	h->jh_major = FUNC3(major);
	h->jh_minor = FUNC3(minor);

	/* CRC over JCG payload (uImage) */
	crc = FUNC0(0L, Z_NULL, 0);
	crc = FUNC0(crc, payload, psize);
	h->jh_dcrc  = FUNC2(crc);

	/* CRC over JCG header */
	crc = FUNC0(0L, Z_NULL, 0);
	crc = FUNC0(crc, (void *)h, sizeof(*h));
	h->jh_hcrc  = FUNC2(crc);
}