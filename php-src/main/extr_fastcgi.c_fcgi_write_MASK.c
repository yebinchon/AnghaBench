#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ fcgi_request_type ;
struct TYPE_8__ {int out_pos; int out_buf; scalar_t__ keep; TYPE_5__* out_hdr; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ fcgi_request ;
typedef  int /*<<< orphan*/  fcgi_header ;
struct TYPE_9__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int FUNC5 (TYPE_1__*,char const*,int) ; 

int FUNC6(fcgi_request *req, fcgi_request_type type, const char *str, int len)
{
	int limit, rest;

	if (len <= 0) {
		return 0;
	}

	if (req->out_hdr && req->out_hdr->type != type) {
		FUNC0(req);
	}
#if 0
	/* Unoptimized, but clear version */
	rest = len;
	while (rest > 0) {
		limit = sizeof(req->out_buf) - (req->out_pos - req->out_buf);

		if (!req->out_hdr) {
			if (limit < sizeof(fcgi_header)) {
				if (!fcgi_flush(req, 0)) {
					return -1;
				}
			}
			open_packet(req, type);
		}
		limit = sizeof(req->out_buf) - (req->out_pos - req->out_buf);
		if (rest < limit) {
			memcpy(req->out_pos, str, rest);
			req->out_pos += rest;
			return len;
		} else {
			memcpy(req->out_pos, str, limit);
			req->out_pos += limit;
			rest -= limit;
			str += limit;
			if (!fcgi_flush(req, 0)) {
				return -1;
			}
		}
	}
#else
	/* Optimized version */
	limit = (int)(sizeof(req->out_buf) - (req->out_pos - req->out_buf));
	if (!req->out_hdr) {
		limit -= sizeof(fcgi_header);
		if (limit < 0) limit = 0;
	}

	if (len < limit) {
		if (!req->out_hdr) {
			FUNC4(req, type);
		}
		FUNC3(req->out_pos, str, len);
		req->out_pos += len;
	} else if (len - limit < (int)(sizeof(req->out_buf) - sizeof(fcgi_header))) {
		if (!req->out_hdr) {
			FUNC4(req, type);
		}
		if (limit > 0) {
			FUNC3(req->out_pos, str, limit);
			req->out_pos += limit;
		}
		if (!FUNC1(req, 0)) {
			return -1;
		}
		if (len > limit) {
			FUNC4(req, type);
			FUNC3(req->out_pos, str + limit, len - limit);
			req->out_pos += len - limit;
		}
	} else {
		int pos = 0;
		int pad;

		FUNC0(req);
		while ((len - pos) > 0xffff) {
			FUNC4(req, type);
			FUNC2(req->out_hdr, type, req->id, 0xfff8);
			req->out_hdr = NULL;
			if (!FUNC1(req, 0)) {
				return -1;
			}
			if (FUNC5(req, str + pos, 0xfff8) != 0xfff8) {
				req->keep = 0;
				return -1;
			}
			pos += 0xfff8;
		}

		pad = (((len - pos) + 7) & ~7) - (len - pos);
		rest = pad ? 8 - pad : 0;

		FUNC4(req, type);
		FUNC2(req->out_hdr, type, req->id, (len - pos) - rest);
		req->out_hdr = NULL;
		if (!FUNC1(req, 0)) {
			return -1;
		}
		if (FUNC5(req, str + pos, (len - pos) - rest) != (len - pos) - rest) {
			req->keep = 0;
			return -1;
		}
		if (pad) {
			FUNC4(req, type);
			FUNC3(req->out_pos, str + len - rest,  rest);
			req->out_pos += rest;
		}
	}
#endif
	return len;
}