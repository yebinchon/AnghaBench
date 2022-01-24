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
struct zip_extra_field {struct zip_extra_field* next; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;
struct zip_error {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct zip_extra_field*) ; 
 struct zip_extra_field* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct zip_extra_field *
FUNC3(const struct zip_extra_field *ef, struct zip_error *error)
{
    struct zip_extra_field *head, *prev, *def;
    
    head = prev = NULL;
    
    while (ef) {
        if ((def=FUNC1(ef->id, ef->size, ef->data, ef->flags)) == NULL) {
            FUNC2(error, ZIP_ER_MEMORY, 0);
            FUNC0(head);
            return NULL;
        }
        
        if (head == NULL)
            head = def;
        if (prev)
            prev->next = def;
        prev = def;

	ef = ef->next;
    }
    
    return head;
}