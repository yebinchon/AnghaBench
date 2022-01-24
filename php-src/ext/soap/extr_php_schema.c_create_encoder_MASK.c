#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_15__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ smart_str ;
typedef  int /*<<< orphan*/  sdlTypePtr ;
typedef  TYPE_3__* sdlPtr ;
typedef  TYPE_4__* encodePtr ;
typedef  int /*<<< orphan*/  encode ;
struct TYPE_14__ {int /*<<< orphan*/  sdl_type; void* type_str; void* ns; } ;
struct TYPE_17__ {int /*<<< orphan*/  to_zval; int /*<<< orphan*/  to_xml; TYPE_1__ details; } ;
struct TYPE_16__ {int /*<<< orphan*/ * encoders; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  delete_encoder ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sdl_guess_convert_xml ; 
 int /*<<< orphan*/  sdl_guess_convert_zval ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static encodePtr FUNC11(sdlPtr sdl, sdlTypePtr cur_type, const xmlChar *ns, const xmlChar *type)
{
	smart_str nscat = {0};
	encodePtr enc, enc_ptr;

	if (sdl->encoders == NULL) {
		sdl->encoders = FUNC1(sizeof(HashTable));
		FUNC9(sdl->encoders, 0, NULL, delete_encoder, 0);
	}
	FUNC6(&nscat, (char*)ns);
	FUNC5(&nscat, ':');
	FUNC6(&nscat, (char*)type);
	FUNC4(&nscat);
	if ((enc_ptr = FUNC8(sdl->encoders, nscat.s)) != NULL) {
		enc = enc_ptr;
		if (enc->details.ns) {
			FUNC0(enc->details.ns);
		}
		if (enc->details.type_str) {
			FUNC0(enc->details.type_str);
		}
	} else {
		enc_ptr = NULL;
		enc = FUNC1(sizeof(encode));
	}
	FUNC3(enc, 0, sizeof(encode));

	enc->details.ns = FUNC2((char*)ns);
	enc->details.type_str = FUNC2((char*)type);
	enc->details.sdl_type = cur_type;
	enc->to_xml = sdl_guess_convert_xml;
	enc->to_zval = sdl_guess_convert_zval;

	if (enc_ptr == NULL) {
		FUNC10(sdl->encoders, nscat.s, enc);
	}
	FUNC7(&nscat);
	return enc;
}