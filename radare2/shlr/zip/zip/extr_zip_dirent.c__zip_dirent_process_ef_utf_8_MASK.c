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
typedef  int zip_uint8_t ;
typedef  scalar_t__ zip_uint32_t ;
typedef  int zip_uint16_t ;
struct zip_string {int dummy; } ;
struct zip_dirent {int /*<<< orphan*/  extra_fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_EF_BOTH ; 
 int /*<<< orphan*/  ZIP_ENCODING_UTF8_KNOWN ; 
 int* FUNC0 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int const**) ; 
 scalar_t__ FUNC2 (struct zip_string*) ; 
 int /*<<< orphan*/  FUNC3 (struct zip_string*) ; 
 struct zip_string* FUNC4 (int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct zip_string *
FUNC5(const struct zip_dirent *de, zip_uint16_t id, struct zip_string *str)
{
    zip_uint16_t ef_len;
    zip_uint32_t ef_crc;

    const zip_uint8_t *ef = FUNC0(de->extra_fields, &ef_len, id, 0, ZIP_EF_BOTH, NULL);

    if (ef == NULL || ef_len < 5 || ef[0] != 1)
	return str;

    ef++;
    ef_crc = FUNC1(&ef);

    if (FUNC2(str) == ef_crc) {
	struct zip_string *ef_str = FUNC4(ef, ef_len-5, ZIP_ENCODING_UTF8_KNOWN, NULL);

	if (ef_str != NULL) {
	    FUNC3(str);
	    str = ef_str;
	}
    }
    
    return str;
}