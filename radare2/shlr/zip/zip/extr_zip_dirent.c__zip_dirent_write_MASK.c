#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zip_uint8_t ;
typedef  scalar_t__ zip_uint32_t ;
typedef  unsigned short zip_uint16_t ;
typedef  int zip_flags_t ;
struct zip_extra_field {struct zip_extra_field* next; } ;
struct zip_error {int dummy; } ;
struct zip_dirent {int bitflags; scalar_t__ comp_size; scalar_t__ uncomp_size; scalar_t__ offset; int version_madeby; int version_needed; scalar_t__ crc; unsigned short int_attrib; scalar_t__ ext_attrib; scalar_t__ comment; struct zip_extra_field* extra_fields; scalar_t__ filename; scalar_t__ disk_number; int /*<<< orphan*/  last_mod; scalar_t__ comp_method; } ;
typedef  enum zip_encoding_type { ____Placeholder_zip_encoding_type } zip_encoding_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CENTRAL_MAGIC ; 
 int /*<<< orphan*/  LOCAL_MAGIC ; 
 int ZIP_EF_BOTH ; 
 int /*<<< orphan*/  ZIP_EF_UTF_8_COMMENT ; 
 int /*<<< orphan*/  ZIP_EF_UTF_8_NAME ; 
 int /*<<< orphan*/  ZIP_EF_ZIP64 ; 
 int ZIP_ENCODING_ASCII ; 
 int /*<<< orphan*/  ZIP_ENCODING_UNKNOWN ; 
 int ZIP_ENCODING_UTF8_KNOWN ; 
 int /*<<< orphan*/  ZIP_ER_WRITE ; 
 int ZIP_FL_FORCE_ZIP64 ; 
 int ZIP_FL_LOCAL ; 
 int ZIP_GPBF_ENCODING_UTF_8 ; 
 scalar_t__ ZIP_UINT32_MAX ; 
 int FUNC0 (struct zip_dirent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zip_extra_field*) ; 
 struct zip_extra_field* FUNC2 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ *,int) ; 
 unsigned short FUNC3 (struct zip_extra_field*,int) ; 
 struct zip_extra_field* FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct zip_error*) ; 
 int /*<<< orphan*/  FUNC5 (struct zip_extra_field*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ **) ; 
 unsigned short FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned short*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC16(struct zip_dirent *de, FILE *fp, zip_flags_t flags, struct zip_error *error)
{
    unsigned short dostime, dosdate;
    enum zip_encoding_type com_enc, name_enc;
    struct zip_extra_field *ef;
    zip_uint8_t ef_zip64[24], *ef_zip64_p;
    int is_zip64;
    int is_really_zip64;

    ef = NULL;

    is_zip64 = 0;

    FUNC15((flags & ZIP_FL_LOCAL) ? LOCAL_MAGIC : CENTRAL_MAGIC, 1, 4, fp);

    name_enc = FUNC7(de->filename, ZIP_ENCODING_UNKNOWN);
    com_enc = FUNC7(de->comment, ZIP_ENCODING_UNKNOWN);

    if ((name_enc == ZIP_ENCODING_UTF8_KNOWN  && com_enc == ZIP_ENCODING_ASCII) ||
	(name_enc == ZIP_ENCODING_ASCII && com_enc == ZIP_ENCODING_UTF8_KNOWN) ||
	(name_enc == ZIP_ENCODING_UTF8_KNOWN  && com_enc == ZIP_ENCODING_UTF8_KNOWN))
	de->bitflags |= ZIP_GPBF_ENCODING_UTF_8;
    else {
	de->bitflags &= ~ZIP_GPBF_ENCODING_UTF_8;
	if (name_enc == ZIP_ENCODING_UTF8_KNOWN) {
	    ef = FUNC4(ZIP_EF_UTF_8_NAME, de->filename, error);
	    if (ef == NULL)
		return -1;
	}
	if ((flags & ZIP_FL_LOCAL) == 0 && com_enc == ZIP_ENCODING_UTF8_KNOWN){
	    struct zip_extra_field *ef2 = FUNC4(ZIP_EF_UTF_8_COMMENT, de->comment, error);
	    if (ef2 == NULL) {
		FUNC1(ef);
		return -1;
	    }
	    ef2->next = ef;
	    ef = ef2;
	}
    }

    ef_zip64_p = ef_zip64;
    if (flags & ZIP_FL_LOCAL) {
	if ((flags & ZIP_FL_FORCE_ZIP64) || de->comp_size > ZIP_UINT32_MAX || de->uncomp_size > ZIP_UINT32_MAX) {
	    FUNC8(de->comp_size, &ef_zip64_p);
	    FUNC8(de->uncomp_size, &ef_zip64_p);
	}
    }
    else {
	if ((flags & ZIP_FL_FORCE_ZIP64) || de->comp_size > ZIP_UINT32_MAX || de->uncomp_size > ZIP_UINT32_MAX || de->offset > ZIP_UINT32_MAX) {
	    if (de->comp_size >= ZIP_UINT32_MAX)
		FUNC8(de->comp_size, &ef_zip64_p);
	    if (de->uncomp_size >= ZIP_UINT32_MAX)
		FUNC8(de->uncomp_size, &ef_zip64_p);
	    if (de->offset >= ZIP_UINT32_MAX)
		FUNC8(de->offset, &ef_zip64_p);
	}
    }

    if (ef_zip64_p != ef_zip64) {
	struct zip_extra_field *ef64 = FUNC2(ZIP_EF_ZIP64, (zip_uint16_t)(ef_zip64_p-ef_zip64), ef_zip64, ZIP_EF_BOTH);
	ef64->next = ef;
	ef = ef64;
	is_zip64 = 1;
    }

    if ((flags & (ZIP_FL_LOCAL|ZIP_FL_FORCE_ZIP64)) == (ZIP_FL_LOCAL|ZIP_FL_FORCE_ZIP64))
	is_really_zip64 = FUNC0(de, flags);
    else
	is_really_zip64 = is_zip64;
    
    if ((flags & ZIP_FL_LOCAL) == 0)
	FUNC12(is_really_zip64 ? 45 : de->version_madeby, fp);
    FUNC12(is_really_zip64 ? 45 : de->version_needed, fp);
    FUNC12(de->bitflags&0xfff9, fp); /* clear compression method specific flags */
    FUNC12((zip_uint16_t)de->comp_method, fp); /* XXX: can it be ZIP_CM_DEFAULT? */

    FUNC11(de->last_mod, &dostime, &dosdate);
    FUNC12(dostime, fp);
    FUNC12(dosdate, fp);

    FUNC13(de->crc, fp);
    if (de->comp_size < ZIP_UINT32_MAX)
	FUNC13((zip_uint32_t)de->comp_size, fp);
    else
	FUNC13(ZIP_UINT32_MAX, fp);
    if (de->uncomp_size < ZIP_UINT32_MAX)
	FUNC13((zip_uint32_t)de->uncomp_size, fp);
    else
	FUNC13(ZIP_UINT32_MAX, fp);

    FUNC12(FUNC9(de->filename), fp);
    FUNC12(FUNC3(de->extra_fields, flags) + FUNC3(ef, ZIP_EF_BOTH), fp);
    
    if ((flags & ZIP_FL_LOCAL) == 0) {
	FUNC12(FUNC9(de->comment), fp);
	FUNC12((zip_uint16_t)de->disk_number, fp);
	FUNC12(de->int_attrib, fp);
	FUNC13(de->ext_attrib, fp);
	if (de->offset < ZIP_UINT32_MAX)
	    FUNC13((zip_uint32_t)de->offset, fp);
	else
	    FUNC13(ZIP_UINT32_MAX, fp);
    }

    if (de->filename)
	FUNC10(de->filename, fp);

    if (ef)
	FUNC5(ef, ZIP_EF_BOTH, fp);
    if (de->extra_fields)
	FUNC5(de->extra_fields, flags, fp);

    if ((flags & ZIP_FL_LOCAL) == 0) {
	if (de->comment)
	    FUNC10(de->comment, fp);
    }

    FUNC1(ef);

    if (FUNC14(fp)) {
	FUNC6(error, ZIP_ER_WRITE, errno);
	return -1;
    }

    return is_zip64;
}