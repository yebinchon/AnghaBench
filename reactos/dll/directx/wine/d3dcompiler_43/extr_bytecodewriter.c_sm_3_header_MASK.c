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
struct bwriter_shader {int /*<<< orphan*/  num_outputs; int /*<<< orphan*/  outputs; int /*<<< orphan*/  num_inputs; int /*<<< orphan*/  inputs; } ;
struct bc_writer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWRITERSPR_INPUT ; 
 int /*<<< orphan*/  BWRITERSPR_OUTPUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bwriter_shader const*,struct bytecode_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwriter_shader const*,struct bytecode_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwriter_shader const*,struct bytecode_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bc_writer*,struct bytecode_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwriter_shader const*,struct bytecode_buffer*) ; 

__attribute__((used)) static void FUNC5(struct bc_writer *This, const struct bwriter_shader *shader, struct bytecode_buffer *buffer) {
    FUNC3(This, buffer, TRUE, shader->inputs, shader->num_inputs, BWRITERSPR_INPUT);
    FUNC3(This, buffer, TRUE, shader->outputs, shader->num_outputs, BWRITERSPR_OUTPUT);
    FUNC1(shader, buffer, TRUE);
    FUNC0(shader, buffer, TRUE);
    FUNC2(shader, buffer, TRUE);
    FUNC4(shader, buffer);
}