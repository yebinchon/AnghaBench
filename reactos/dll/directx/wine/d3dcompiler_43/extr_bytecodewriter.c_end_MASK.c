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
struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {int dummy; } ;
struct bc_writer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D3DSIO_END ; 
 int /*<<< orphan*/  FUNC0 (struct bytecode_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bc_writer *This, const struct bwriter_shader *shader, struct bytecode_buffer *buffer) {
    FUNC0(buffer, D3DSIO_END);
}