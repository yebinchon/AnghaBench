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
typedef  long uLong ;
struct uimage_header {int ih_os; int ih_arch; int ih_type; int ih_comp; void* ih_hcrc; void* ih_dcrc; void* ih_size; scalar_t__ ih_name; void* ih_fsoff; void* ih_ep; void* ih_load; void* ih_time; void* ih_magic; } ;

/* Variables and functions */
 long IH_MAGIC ; 
 void* Z_NULL ; 
 long FUNC0 (long,void*,int) ; 
 void* FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (struct uimage_header*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct uimage_header *h, size_t ksize, size_t fsize)
{
	uLong crc;
	void *payload = (void *)h + sizeof(*h);

	// printf("mkuheader: %p, %zd, %zd\n", h, ksize, fsize);
	FUNC2(h, 0, sizeof(*h));
	h->ih_magic = FUNC1(IH_MAGIC);
	h->ih_time  = FUNC1(FUNC6(NULL));
	h->ih_size  = FUNC1(ksize + fsize);
	h->ih_load  = FUNC1(0x80000000);
	h->ih_ep    = FUNC1(0x80292000);
	h->ih_os    = 0x05;
	h->ih_arch  = 0x05;
	h->ih_type  = 0x02;
	h->ih_comp  = 0x03;
	h->ih_fsoff = FUNC1(sizeof(*h) + ksize);
	FUNC5((char *)h->ih_name, "Linux Kernel Image");

	/* CRC over uImage payload (kernel and file system) */
	crc = FUNC0(0L, Z_NULL, 0);
	crc = FUNC0(crc, payload, FUNC3(h->ih_size));
	h->ih_dcrc  = FUNC1(crc);
	FUNC4("CRC1: %08lx\n", crc);

	/* CRC over uImage header */
	crc = FUNC0(0L, Z_NULL, 0);
	crc = FUNC0(crc, (void *)h, sizeof(*h));
	h->ih_hcrc  = FUNC1(crc);
	FUNC4("CRC2: %08lx\n", crc);
}