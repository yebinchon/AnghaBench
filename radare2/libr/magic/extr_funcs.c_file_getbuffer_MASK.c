#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  mbstate_t ;
struct TYPE_5__ {char const* buf; char* pbuf; } ;
struct TYPE_6__ {int flags; TYPE_1__ o; scalar_t__ haderr; } ;
typedef  TYPE_2__ RMagic ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int R_MAGIC_RAW ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,size_t) ; 
 size_t FUNC9 (char const*) ; 

const char *FUNC10(RMagic *ms) {
	char *pbuf, *op, *np;
	size_t psize, len;

	if (ms->haderr) {
		return NULL;
	}

	if (ms->flags & R_MAGIC_RAW) {
		return ms->o.buf;
	}

	if (!ms->o.buf) {
		FUNC1 ("ms->o.buf = NULL\n");
		return NULL;
	}

	/* * 4 is for octal representation, + 1 is for NUL */
	len = FUNC9 (ms->o.buf);
	if (len > (SIZE_MAX - 1) / 4) {
		FUNC2 (ms, len);
		return NULL;
	}
	psize = len * 4 + 1;
	if (!(pbuf = FUNC8 (ms->o.pbuf, psize))) {
		FUNC2 (ms, psize);
		return NULL;
	}
	ms->o.pbuf = pbuf;

#if 1
//defined(HAVE_WCHAR_H) && defined(HAVE_MBRTOWC) && defined(HAVE_WCWIDTH)
	{
		mbstate_t state;
		wchar_t nextchar;
		int mb_conv = 1;
		size_t bytesconsumed;
		char *eop;
		(void)FUNC7(&state, 0, sizeof(mbstate_t));

		np = ms->o.pbuf;
		op = ms->o.buf;
		eop = op + len;

		while (op < eop) {
			bytesconsumed = FUNC5(&nextchar, op,
			    (size_t)(eop - op), &state);
			if (bytesconsumed == (size_t)(-1) ||
			    bytesconsumed == (size_t)(-2)) {
				mb_conv = 0;
				break;
			}

			if (FUNC4(nextchar)) {
				(void)FUNC6(np, op, bytesconsumed);
				op += bytesconsumed;
				np += bytesconsumed;
			} else {
				while (bytesconsumed-- > 0) {
					FUNC0 (np, op);
				}
			}
		}
		*np = '\0';

		/* Parsing succeeded as a multi-byte sequence */
		if (mb_conv != 0) {
			return ms->o.pbuf;
		}
	}
#endif
	for (np = ms->o.pbuf, op = ms->o.buf; *op; op++) {
		if (FUNC3 ((ut8)*op)) {
			*np++ = *op;	
		} else {
			FUNC0 (np, op);
		}
	}
	*np = '\0';
	return ms->o.pbuf;
}