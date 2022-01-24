#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int pos; } ;
struct mime_header_encoder_data {int status1; size_t linehead; size_t firstindent; size_t encnamelen; TYPE_1__* block_filter; TYPE_3__ tmpdev; TYPE_3__ outdev; int /*<<< orphan*/  lwsplen; int /*<<< orphan*/  lwsp; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* filter_function ) (int,TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(int c, void *data)
{
	static int qp_table[256] = {
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0x00 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0x00 */
		1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, /* 0x20 */
		0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 1, 0, 1, /* 0x10 */
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, /* 0x40 */
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, /* 0x50 */
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, /* 0x60 */
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, /* 0x70 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0x80 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0x90 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0xA0 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0xB0 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0xC0 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0xD0 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, /* 0xE0 */
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1  /* 0xF0 */
	};

	size_t n;
	struct mime_header_encoder_data *pe = (struct mime_header_encoder_data *)data;

	switch (pe->status1) {
	case 11:	/* encoded word */
		(*pe->block_filter->filter_function)(c, pe->block_filter);
		break;

	default:	/* ASCII */
		if (c <= 0x00ff && !qp_table[(c & 0xff)]) { /* ordinary characters */
			FUNC2(c, &pe->tmpdev);
			pe->status1 = 1;
		} else if (pe->status1 == 0 && c == 0x20) {	/* repeat SPACE */
			FUNC2(c, &pe->tmpdev);
		} else {
			if (pe->tmpdev.pos < 74 && c == 0x20) {
				n = pe->outdev.pos - pe->linehead + pe->tmpdev.pos + pe->firstindent;
				if (n > 74) {
					FUNC4(&pe->outdev, pe->lwsp, pe->lwsplen);		/* LWSP */
					pe->linehead = pe->outdev.pos;
					pe->firstindent = 0;
				} else if (pe->outdev.pos > 0) {
					FUNC2(0x20, &pe->outdev);
				}
				FUNC1(&pe->outdev, &pe->tmpdev);
				FUNC3(&pe->tmpdev);
				pe->status1 = 0;
			} else {
				n = pe->outdev.pos - pe->linehead + pe->encnamelen + pe->firstindent;
				if (n > 60)  {
					FUNC4(&pe->outdev, pe->lwsp, pe->lwsplen);		/* LWSP */
					pe->linehead = pe->outdev.pos;
					pe->firstindent = 0;
				} else if (pe->outdev.pos > 0)  {
					FUNC2(0x20, &pe->outdev);
				}
				FUNC0(pe->block_filter, &pe->tmpdev);
				FUNC3(&pe->tmpdev);
				(*pe->block_filter->filter_function)(c, pe->block_filter);
				pe->status1 = 11;
			}
		}
		break;
	}

	return c;
}