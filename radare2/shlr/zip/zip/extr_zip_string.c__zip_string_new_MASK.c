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
typedef  char zip_uint8_t ;
typedef  int zip_uint16_t ;
typedef  int zip_flags_t ;
struct zip_string {char* raw; int length; int encoding; scalar_t__ converted_length; int /*<<< orphan*/ * converted; } ;
struct zip_error {int dummy; } ;
typedef  enum zip_encoding_type { ____Placeholder_zip_encoding_type } zip_encoding_type ;

/* Variables and functions */
 int ZIP_ENCODING_CP437 ; 
 scalar_t__ ZIP_ENCODING_ERROR ; 
 int ZIP_ENCODING_UNKNOWN ; 
 int ZIP_ENCODING_UTF8_KNOWN ; 
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int ZIP_FL_ENCODING_ALL ; 
#define  ZIP_FL_ENC_CP437 130 
#define  ZIP_FL_ENC_GUESS 129 
#define  ZIP_FL_ENC_UTF_8 128 
 int /*<<< orphan*/  FUNC0 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct zip_string*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_string*) ; 
 int /*<<< orphan*/  FUNC3 (struct zip_string*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

struct zip_string *
FUNC6(const zip_uint8_t *raw, zip_uint16_t length, zip_flags_t flags, struct zip_error *error)
{
    struct zip_string *s;
    enum zip_encoding_type expected_encoding;
    
    if (length == 0)
	return NULL;

    switch (flags & ZIP_FL_ENCODING_ALL) {
    case ZIP_FL_ENC_GUESS:
	expected_encoding = ZIP_ENCODING_UNKNOWN;
	break;
    case ZIP_FL_ENC_UTF_8:
	expected_encoding = ZIP_ENCODING_UTF8_KNOWN;
	break;
    case ZIP_FL_ENC_CP437:
	expected_encoding = ZIP_ENCODING_CP437;
	break;
    default:
	FUNC0(error, ZIP_ER_INVAL, 0);
	return NULL;
    }
	
    if ((s=(struct zip_string *)FUNC4(sizeof(*s))) == NULL) {
	FUNC0(error, ZIP_ER_MEMORY, 0);
	return NULL;
    }

    if ((s->raw=(zip_uint8_t *)FUNC4(length+1)) == NULL) {
	FUNC3(s);
	return NULL;
    }

    FUNC5(s->raw, raw, length);
    s->raw[length] = '\0';
    s->length = length;
    s->encoding = ZIP_ENCODING_UNKNOWN;
    s->converted = NULL;
    s->converted_length = 0;

    if (expected_encoding != ZIP_ENCODING_UNKNOWN) {
	if (FUNC1(s, expected_encoding) == ZIP_ENCODING_ERROR) {
	    FUNC2(s);
	    FUNC0(error, ZIP_ER_INVAL, 0);
	    return NULL;
	}
    }
    
    return s;
}