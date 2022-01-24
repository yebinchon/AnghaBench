#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ image; TYPE_1__ base; int /*<<< orphan*/  string; } ;
typedef  TYPE_2__ string_image_facade_t ;
typedef  size_t mp_uint_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ MP_OBJ_SENTINEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t,scalar_t__,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static mp_obj_t FUNC3(mp_obj_t self_in, mp_obj_t index_in, mp_obj_t value) {
    if (value == MP_OBJ_SENTINEL) {
        // Fill in image
        string_image_facade_t *self = (string_image_facade_t *)self_in;
        size_t len;
        const char *text = FUNC2(self->string, &len);
        mp_uint_t index = FUNC1(self->base.type, len, index_in, false);
        FUNC0(self->image, text[index]);
        return self->image;
    } else {
        return MP_OBJ_NULL; // op not supported
    }
}