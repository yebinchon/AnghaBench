#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  old_header; TYPE_1__* sdl; } ;
typedef  TYPE_2__ sdlCtx ;
struct TYPE_4__ {char* source; } ;

/* Variables and functions */
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,char) ; 
 size_t FUNC13 (char*) ; 
 char* FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(sdlCtx *ctx, char *uri)
{
	char *s;
	size_t l1, l2;
	zval context;
	zval *header = NULL;

	/* check if we load xsd from the same server */
	s = FUNC14(ctx->sdl->source, "://");
	if (!s) return;
	s = FUNC12(s+3, '/');
	l1 = s ? (size_t)(s - ctx->sdl->source) : FUNC13(ctx->sdl->source);
	s = FUNC14((char*)uri, "://");
	if (!s) return;
	s = FUNC12(s+3, '/');
	l2 = s ? (size_t)(s - (char*)uri) : FUNC13((char*)uri);
	if (l1 != l2) {
		/* check for http://...:80/ */
		if (l1 > 11 &&
		    ctx->sdl->source[4] == ':' &&
		    ctx->sdl->source[l1-3] == ':' &&
		    ctx->sdl->source[l1-2] == '8' &&
		    ctx->sdl->source[l1-1] == '0') {
			l1 -= 3;
		}
		if (l2 > 11 &&
		    uri[4] == ':' &&
		    uri[l2-3] == ':' &&
		    uri[l2-2] == '8' &&
		    uri[l2-1] == '0') {
			l2 -= 3;
		}
		/* check for https://...:443/ */
		if (l1 > 13 &&
		    ctx->sdl->source[4] == 's' &&
		    ctx->sdl->source[l1-4] == ':' &&
		    ctx->sdl->source[l1-3] == '4' &&
		    ctx->sdl->source[l1-2] == '4' &&
		    ctx->sdl->source[l1-1] == '3') {
			l1 -= 4;
		}
		if (l2 > 13 &&
		    uri[4] == 's' &&
		    uri[l2-4] == ':' &&
		    uri[l2-3] == '4' &&
		    uri[l2-2] == '4' &&
		    uri[l2-1] == '3') {
			l2 -= 4;
		}
	}
	if (l1 != l2 || FUNC6(ctx->sdl->source, uri, l1) != 0) {
		/* another server. clear authentication credentals */
		FUNC8(NULL, &context);
		FUNC8(&context, NULL);
		if (FUNC5(context) != IS_UNDEF) {
			zval *context_ptr = &context;
			ctx->context = FUNC9(context_ptr, 1);

			if (ctx->context &&
			    (header = FUNC10(ctx->context, "http", "header")) != NULL) {
				s = FUNC14(FUNC4(header), "Authorization: Basic");
				if (s && (s == FUNC4(header) || *(s-1) == '\n' || *(s-1) == '\r')) {
					char *rest = FUNC14(s, "\r\n");
					if (rest) {
						zval new_header;

						rest += 2;
						FUNC1(&new_header, FUNC15(FUNC2(header) - (rest - s), 0));
						FUNC7(FUNC3(new_header), FUNC4(header), s - FUNC4(header));
						FUNC7(FUNC3(new_header) + (s - FUNC4(header)), rest, FUNC2(header) - (rest - FUNC4(header)) + 1);
						FUNC0(&ctx->old_header, header);
						FUNC11(ctx->context, "http", "header", &new_header);
						FUNC16(&new_header);
					}
				}
			}
		}
	}
}