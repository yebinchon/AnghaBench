#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  size_t ut32 ;
typedef  size_t ut16 ;
typedef  int /*<<< orphan*/  typeidx_buf ;
typedef  int /*<<< orphan*/  params_buf ;
struct TYPE_8__ {int prototypes_size; size_t types_size; } ;
struct TYPE_10__ {size_t size; TYPE_3__* types; TYPE_2__ header; int /*<<< orphan*/  b; TYPE_1__* protos; } ;
struct TYPE_9__ {int /*<<< orphan*/  descriptor_id; } ;
struct TYPE_7__ {size_t parameters_off; size_t return_type_id; } ;
typedef  TYPE_4__ RBinDexObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char*,...) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static char *FUNC10(RBinDexObj *bin, int proto_id) {
	ut32 params_off, type_id, list_size;
	char *r = NULL, *return_type = NULL, *signature = NULL, *buff = NULL;
	ut16 type_idx;
	int pos = 0, i, size = 1;

	if (proto_id >= bin->header.prototypes_size) {
		return NULL;
	}
	params_off = bin->protos[proto_id].parameters_off;
	if (params_off >= bin->size) {
		return NULL;
	}
	type_id = bin->protos[proto_id].return_type_id;
	if (type_id >= bin->header.types_size ) {
		return NULL;
	}
	return_type = FUNC2 (bin, bin->types[type_id].descriptor_id);
	if (!return_type) {
		return NULL;
	}
	if (!params_off) {
		return FUNC6 ("()%s", return_type);;
	}
	ut8 params_buf[sizeof (ut32)];
	if (!FUNC3 (bin->b, params_off, params_buf, sizeof (params_buf))) {
		return NULL;
	}
	// size of the list, in entries
	list_size = FUNC5 (params_buf);
	if (list_size * sizeof (ut16) >= bin->size) {
		return NULL;
	}

	for (i = 0; i < list_size; i++) {
		int buff_len = 0;
		int off = params_off + 4 + (i * 2);
		if (off >= bin->size) {
			break;
		}
		ut8 typeidx_buf[sizeof (ut16)];
		if (!FUNC3 (bin->b, off, typeidx_buf, sizeof (typeidx_buf))) {
			break;
		}
		type_idx = FUNC4 (typeidx_buf);
		if (type_idx >= bin->header.types_size || type_idx >= bin->size) {
			break;
		}
		buff = FUNC2 (bin, bin->types[type_idx].descriptor_id);
		if (!buff) {
			break;
		}
		buff_len = FUNC9 (buff);
		size += buff_len + 1;
		char *newsig = FUNC7 (signature, size);
		if (!newsig) {
			FUNC0 ("Cannot realloc to %d\n", size);
			break;
		}
		signature = newsig;
		FUNC8 (signature + pos, buff);
		pos += buff_len;
		signature[pos] = '\0';
	}
	if (signature) {
		r = FUNC6 ("(%s)%s", signature, return_type);
		FUNC1 (signature);
	}
	return r;
}