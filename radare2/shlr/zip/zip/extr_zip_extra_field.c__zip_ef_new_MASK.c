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
typedef  int zip_uint16_t ;
typedef  int /*<<< orphan*/  zip_flags_t ;
struct zip_extra_field {int id; int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  flags; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zip_extra_field*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

struct zip_extra_field *
FUNC3(zip_uint16_t id, zip_uint16_t size, const zip_uint8_t *data, zip_flags_t flags)
{
    struct zip_extra_field *ef;

    if ((ef=(struct zip_extra_field *)FUNC1(sizeof(*ef))) == NULL)
	return NULL;

    ef->next = NULL;
    ef->flags = flags;
	ef->data = NULL;
    ef->id = id;
    ef->size = size;
    if (size > 0) {
	zip_uint8_t *p = FUNC1 (size);
	if (p) {
		ef->data = p;	
		FUNC2 (p, data, size);
	} else {
	    FUNC0(ef);
	    return NULL;
	}
    }

    return ef;
}