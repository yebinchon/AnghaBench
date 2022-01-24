#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned short leaf_type; void* type_info; } ;
struct TYPE_4__ {int length; TYPE_3__ type_data; } ;
typedef  TYPE_1__ SType ;
typedef  int /*<<< orphan*/  SLF_POINTER ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLF_ARGLIST ; 
 int /*<<< orphan*/  SLF_ARRAY ; 
 int /*<<< orphan*/  SLF_BITFIELD ; 
 int /*<<< orphan*/  SLF_CLASS ; 
 int /*<<< orphan*/  SLF_ENUM ; 
 int /*<<< orphan*/  SLF_FIELDLIST ; 
 int /*<<< orphan*/  SLF_MFUNCTION ; 
 int /*<<< orphan*/  SLF_MODIFIER ; 
 int /*<<< orphan*/  SLF_PROCEDURE ; 
 int /*<<< orphan*/  SLF_STRUCTURE ; 
 int /*<<< orphan*/  SLF_UNION ; 
 int /*<<< orphan*/  SLF_VTSHAPE ; 
#define  eLF_ARGLIST 141 
#define  eLF_ARRAY 140 
#define  eLF_BITFIELD 139 
#define  eLF_CLASS 138 
#define  eLF_ENUM 137 
#define  eLF_FIELDLIST 136 
#define  eLF_METHODLIST 135 
#define  eLF_MFUNCTION 134 
#define  eLF_MODIFIER 133 
#define  eLF_POINTER 132 
#define  eLF_PROCEDURE 131 
#define  eLF_STRUCTURE 130 
#define  eLF_UNION 129 
#define  eLF_VTSHAPE 128 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  lf_arglist ; 
 int /*<<< orphan*/  lf_array ; 
 int /*<<< orphan*/  lf_bitfield ; 
 int /*<<< orphan*/  lf_class ; 
 int /*<<< orphan*/  lf_enum ; 
 int /*<<< orphan*/  lf_fieldlist ; 
 int /*<<< orphan*/  lf_mfunction ; 
 int /*<<< orphan*/  lf_modifier ; 
 int /*<<< orphan*/  lf_procedure ; 
 int /*<<< orphan*/  lf_structure ; 
 int /*<<< orphan*/  lf_union ; 
 int /*<<< orphan*/  lf_vtshape ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC7(R_STREAM_FILE *stream, SType *type) {
	unsigned char *leaf_data;
	unsigned int read_bytes = 0;

	FUNC6(stream, 2, (char *)&type->length);
	if (type->length < 1) {
		return 0;
	}
	leaf_data = (unsigned char *) FUNC3(type->length);
	if (!leaf_data) {
		return 0;
	}
	FUNC6 (stream, type->length, (char *)leaf_data);
	type->type_data.leaf_type = *(unsigned short *)leaf_data;
	read_bytes += 2;
	switch (type->type_data.leaf_type) {
	case eLF_FIELDLIST:
//		printf("eLF_FIELDLIST\n");
		FUNC0(SLF_FIELDLIST, lf_fieldlist);
		break;
	case eLF_ENUM:
//		printf("eLF_ENUM\n");
		FUNC0(SLF_ENUM, lf_enum);
		break;
	// TODO: combine with eLF_STRUCTURE
	case eLF_CLASS:
//		printf("eLF_CLASS\n");
		FUNC0(SLF_CLASS, lf_class);
		break;
	case eLF_STRUCTURE:
//		printf("eLF_STRUCTURE\n");
		FUNC0(SLF_STRUCTURE, lf_structure);
		break;
	case eLF_POINTER:
//		printf("eLF_POINTER\n");
	{
		SLF_POINTER *lf = (SLF_POINTER *) FUNC3(sizeof(SLF_POINTER)); \
		if (!lf) { \
			FUNC1 (leaf_data); \
			return 0; \
		} \
		FUNC4(lf, leaf_data + 2, &read_bytes, type->length); \
		type->type_data.type_info = (void *) lf; \
		FUNC2(&type->type_data); \
	}
//		PARSE_LF(SLF_POINTER, lf_pointer);
		break;
	case eLF_ARRAY:
//		printf("eLF_ARRAY\n");
		FUNC0(SLF_ARRAY, lf_array);
		break;
	case eLF_MODIFIER:
//		printf("eLF_MODIFIER\n");
		FUNC0(SLF_MODIFIER, lf_modifier);
		break;
	case eLF_ARGLIST:
//		printf("eLF_ARGLIST\n");
		FUNC0(SLF_ARGLIST, lf_arglist);
		break;
	case eLF_MFUNCTION:
//		printf("eLF_MFUNCTION\n");
		FUNC0(SLF_MFUNCTION, lf_mfunction);
		break;
	case eLF_METHODLIST:
//		printf("eLF_METHOD_LIST\n");
		break;
	case eLF_PROCEDURE:
//		printf("eLF_PROCEDURE\n");
		FUNC0(SLF_PROCEDURE, lf_procedure);
		break;
	case eLF_UNION:
//		printf("eLF_UNION\n");
		FUNC0(SLF_UNION, lf_union);
		break;
	case eLF_BITFIELD:
//		printf("eLF_BITFIELD\n");
		FUNC0(SLF_BITFIELD, lf_bitfield);
		break;
	case eLF_VTSHAPE:
//		printf("eLF_VTSHAPE\n");
		FUNC0(SLF_VTSHAPE, lf_vtshape);
		break;
	default:
		FUNC5("parse_tpi_streams(): unsupported leaf type\n");
		break;
	}

	FUNC1 (leaf_data);
	return read_bytes;
}