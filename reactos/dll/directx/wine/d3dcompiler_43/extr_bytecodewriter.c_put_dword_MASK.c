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
struct bytecode_buffer {int alloc_size; int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct bytecode_buffer *buffer, DWORD value) {
    if(FUNC1(buffer->state)) return;

    if(buffer->alloc_size == buffer->size) {
        DWORD *newarray;
        buffer->alloc_size *= 2;
        newarray = FUNC2(buffer->data,
                               sizeof(DWORD) * buffer->alloc_size);
        if(!newarray) {
            FUNC0("Failed to grow the buffer data memory\n");
            buffer->state = E_OUTOFMEMORY;
            return;
        }
        buffer->data = newarray;
    }
    buffer->data[buffer->size++] = value;
}