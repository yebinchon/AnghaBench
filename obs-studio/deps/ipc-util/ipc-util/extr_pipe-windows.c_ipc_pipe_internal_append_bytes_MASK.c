#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t size; scalar_t__ read_data; } ;
typedef  TYPE_1__ ipc_pipe_server_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static inline void FUNC2(ipc_pipe_server_t *pipe,
						  uint8_t *bytes, size_t size)
{
	size_t new_size = pipe->size + size;
	FUNC0(pipe, new_size);
	FUNC1(pipe->read_data + pipe->size, bytes, size);
	pipe->size = new_size;
}