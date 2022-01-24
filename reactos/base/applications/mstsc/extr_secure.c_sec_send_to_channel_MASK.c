#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_6__ {int end; int p; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCARD_LOCK_SEC ; 
 int SEC_ENCRYPT ; 
 int /*<<< orphan*/  g_licence_error_result ; 
 int /*<<< orphan*/  g_licence_issued ; 
 int /*<<< orphan*/  g_rc4_key_len ; 
 int /*<<< orphan*/  g_sec_sign_key ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  sec_hdr ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void
FUNC9(STREAM s, uint32 flags, uint16 channel)
{
	int datalen;

#ifdef WITH_SCARD
	scard_lock(SCARD_LOCK_SEC);
#endif

	FUNC4(s, sec_hdr);
	if ((!g_licence_issued && !g_licence_error_result) || (flags & SEC_ENCRYPT))
		FUNC3(s, flags);

	if (flags & SEC_ENCRYPT)
	{
		flags &= ~SEC_ENCRYPT;
		datalen = s->end - s->p - 8;

#ifdef WITH_DEBUG
		DEBUG(("Sending encrypted packet:\n"));
		hexdump(s->p + 8, datalen);
#endif

		FUNC8(s->p, 8, g_sec_sign_key, g_rc4_key_len, s->p + 8, datalen);
		FUNC7(s->p + 8, datalen);
	}

	FUNC2(s, channel);

#ifdef WITH_SCARD
	scard_unlock(SCARD_LOCK_SEC);
#endif
}