#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_3__ {void* buffer; } ;
typedef  TYPE_1__ triple_buffer_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void* FUNC8(uint16_t object_size, triple_buffer_object_t* object) {
    FUNC6();
    if (FUNC0()) {
        uint8_t shared_index = FUNC2();
        uint8_t read_index   = FUNC1();
        FUNC4(shared_index);
        FUNC5(read_index);
        FUNC3(false);
        FUNC7();
        return object->buffer + object_size * shared_index;
    } else {
        FUNC7();
        return NULL;
    }
}