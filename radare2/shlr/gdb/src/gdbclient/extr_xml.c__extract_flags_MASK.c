#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
typedef  void* ut32 ;
struct TYPE_12__ {char* type; int num_bits; int num_fields; TYPE_1__* fields; } ;
typedef  TYPE_2__ gdbr_xml_flags_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;
struct TYPE_11__ {char* name; void* bit_num; void* sz; } ;
typedef  TYPE_3__ RList ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static RList* FUNC10(char *flagstr) {
	char *tmp1, *tmp2, *flagsend, *field_start, *field_end;
	ut64 num_fields, type_sz, name_sz;
	gdbr_xml_flags_t *tmpflag = NULL;
	RList *flags;
	if (!(flags = FUNC4 ())) {
		return NULL;
	}
	flags->free = free;
	while ((flagstr = FUNC8 (flagstr, "<flags"))) {
		if (!(flagsend = FUNC8 (flagstr, "</flags>"))) {
			goto exit_err;
		}
		*flagsend = '\0';
		if (!(tmpflag = FUNC0 (1, sizeof (gdbr_xml_flags_t)))) {
			goto exit_err;
		}
		// Get id
		if (!(tmp1 = FUNC8 (flagstr, "id="))) {
			goto exit_err;
		}
		tmp1 += 4;
		if (!(tmp2 = FUNC6 (tmp1, '"'))) {
			goto exit_err;
		}
		*tmp2 = '\0';
		type_sz = sizeof (tmpflag->type);
		FUNC7 (tmpflag->type, tmp1, type_sz - 1);
		tmpflag->type[type_sz - 1] = '\0';
		*tmp2 = '"';
		// Get size of flags register
		if (!(tmp1 = FUNC8 (flagstr, "size="))) {
			goto exit_err;
		}
		tmp1 += 6;
		if (!(tmpflag->num_bits = (ut32) FUNC9 (tmp1, NULL, 10))) {
			goto exit_err;
		}
		tmpflag->num_bits *= 8;
		// Get fields
		num_fields = 0;
		field_start = flagstr;
		while ((field_start = FUNC8 (field_start, "<field"))) {
			// Max 64 fields
			if (num_fields >= 64) {
				break;
			}
			if (!(field_end = FUNC8 (field_start, "/>"))) {
				goto exit_err;
			}
			*field_end = '\0';
			// Get name
			if (!(tmp1 = FUNC8 (field_start, "name="))) {
				goto exit_err;
			}
			tmp1 += 6;
			if (!(tmp2 = FUNC6 (tmp1, '"'))) {
				goto exit_err;
			}
			// If name length is 0, it is a 1 field. Don't include
			if (tmp2 - tmp1 <= 1) {
				*field_end = '/';
				field_start = field_end + 1;
				continue;
			}
			*tmp2 = '\0';
			name_sz = sizeof (tmpflag->fields[num_fields].name);
			FUNC7 (tmpflag->fields[num_fields].name, tmp1, name_sz - 1);
			tmpflag->fields[num_fields].name[name_sz - 1] = '\0';
			*tmp2 = '"';
			// Get offset
			if (!(tmp1 = FUNC8 (field_start, "start="))) {
				goto exit_err;
			}
			tmp1 += 7;
			if (!FUNC2 (*tmp1)) {
				goto exit_err;
			}
			tmpflag->fields[num_fields].bit_num = (ut32) FUNC9 (tmp1, NULL, 10);
			// Get end
			if (!(tmp1 = FUNC8 (field_start, "end="))) {
				goto exit_err;
			}
			tmp1 += 5;
			if (!FUNC2 (*tmp1)) {
				goto exit_err;
			}
			tmpflag->fields[num_fields].sz = (ut32) FUNC9 (tmp1, NULL, 10) + 1;
			tmpflag->fields[num_fields].sz -= tmpflag->fields[num_fields].bit_num;
			num_fields++;
			*field_end = '/';
			field_start = field_end + 1;
		}
		tmpflag->num_fields = num_fields;
		FUNC5 (flags, tmpflag);
		*flagsend = '<';
		flagstr = flagsend + 1;
	}
	return flags;
exit_err:
	if (flags) {
		FUNC3 (flags);
	}
	FUNC1 (tmpflag);
	return NULL;
}