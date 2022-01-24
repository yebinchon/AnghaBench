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
typedef  void* uint32_t ;
struct Copy32 {float f; void* i; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,float*,int) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(int is_little_endian, void * dst, float f)
{
	union Copy32 {
		float f;
		uint32_t i;
	} m;
	m.f = f;

#ifdef WORDS_BIGENDIAN
	if (is_little_endian) {
		m.i = php_pack_reverse_int32(m.i);
	}
#else /* WORDS_BIGENDIAN */
	if (!is_little_endian) {
		m.i = FUNC1(m.i);
	}
#endif /* WORDS_BIGENDIAN */

	FUNC0(dst, &m.f, sizeof(float));
}