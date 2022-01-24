#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlBufferPtr ;
struct TYPE_17__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ smart_str ;
typedef  TYPE_4__* sdlTypePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;
struct TYPE_18__ {scalar_t__ encode; } ;
struct TYPE_16__ {scalar_t__ name; TYPE_1__* ns; } ;
struct TYPE_15__ {scalar_t__ href; } ;
struct TYPE_14__ {scalar_t__ elements; } ;

/* Variables and functions */
 TYPE_13__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  sdl ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC12(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
	xmlBufferPtr buf;

	if (FUNC0(sdl) && FUNC0(sdl)->elements && data->name) {
		smart_str nscat = {0};
		sdlTypePtr sdl_type;

		if (data->ns && data->ns->href) {
			FUNC5(&nscat, (char*)data->ns->href);
			FUNC4(&nscat, ':');
		}
		FUNC5(&nscat, (char*)data->name);
		FUNC3(&nscat);

		if ((sdl_type = FUNC11(FUNC0(sdl)->elements, nscat.s)) != NULL &&
		    sdl_type->encode) {
			FUNC6(&nscat);
			return FUNC2(ret, sdl_type->encode, data);
		}
		FUNC6(&nscat);
	}

	buf = FUNC8();
	FUNC10(buf, NULL, data, 0, 0);
	FUNC1(ret, (char*)FUNC7(buf));
	FUNC9(buf);
	return ret;
}