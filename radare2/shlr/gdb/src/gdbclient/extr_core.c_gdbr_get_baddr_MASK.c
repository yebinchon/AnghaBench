#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ data_len; char* data; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

ut64 FUNC10(libgdbr_t *g) {
	ut64 off, min = UINT64_MAX;
	char *ptr;
	if (!g) {
		return UINT64_MAX;
	}

	if (!FUNC0 (g)) {
		goto end;
	}
	if (FUNC6 (g, "qOffsets") < 0 || FUNC4 (g, false) < 0
		    || FUNC5 (g) < 0 || g->data_len == 0) {
		min = UINT64_MAX;
		goto end;
	}
	if (FUNC3 (g->data, "TextSeg=")) {
		ptr = g->data + FUNC8 ("TextSeg=");
		if (!FUNC2 (*ptr)) {
			goto end;
		}
		off = FUNC9 (ptr, NULL, 16);
		if (off < min) {
			min = off;
		}
		if (!(ptr = FUNC7 (ptr, ';'))) {
			goto end;
		}
		ptr++;
		if (*ptr && FUNC3 (ptr, "DataSeg=")) {
			ptr += FUNC8 ("DataSeg=");
			if (!FUNC2 (*ptr)) {
				goto end;
			}
			off = FUNC9 (ptr, NULL, 16);
			if (off < min) {
				min = off;
			}
		}
		goto end;
	}
	if (!FUNC3 (g->data, "Text=")) {
		goto end;
	}
	ptr = g->data + FUNC8 ("Text=");
	if (!FUNC2 (*ptr)) {
		goto end;
	}
	off = FUNC9 (ptr, NULL, 16);
	if (off < min) {
		min = off;
	}
	if (!(ptr = FUNC7 (ptr, ';')) || !FUNC3 (ptr + 1, "Data=")) {
		min = UINT64_MAX;
		goto end;
	}
	ptr += FUNC8 (";Data=");
	if (!FUNC2 (*ptr)) {
		min = UINT64_MAX;
		goto end;
	}
	off = FUNC9 (ptr, NULL, 16);
	if (off < min) {
		min = off;
	}
	if (!(ptr = FUNC7 (ptr, ';'))) {
		goto end;
	}
	ptr++;
	if (FUNC3 (ptr, "Bss=")) {
		ptr += FUNC8 ("Bss=");
		if (!FUNC2 (*ptr)) {
			goto end;
		}
		off = FUNC9 (ptr, NULL, 16);
		if (off < min) {
			min = off;
		}
	}
end:
	FUNC1 (g);
	return min;
}