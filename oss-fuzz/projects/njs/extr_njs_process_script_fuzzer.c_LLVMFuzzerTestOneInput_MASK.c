#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  njs_vm_t ;
struct TYPE_8__ {int interactive; int init; int accumulative; int backtrace; int /*<<< orphan*/ * external; int /*<<< orphan*/ * ops; int /*<<< orphan*/  module; int /*<<< orphan*/  sandbox; int /*<<< orphan*/  quiet; } ;
typedef  TYPE_1__ njs_vm_opt_t ;
struct TYPE_9__ {size_t member_0; char* member_1; } ;
typedef  TYPE_2__ njs_str_t ;
typedef  TYPE_1__ njs_opts_t ;
typedef  scalar_t__ njs_int_t ;

/* Variables and functions */
 scalar_t__ NJS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  njs_console ; 
 int /*<<< orphan*/  njs_console_ops ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

int FUNC5(const uint8_t* data, size_t size) {
  if (size == 0) return 0;

  char* input = FUNC1(size);
  FUNC2(input, data, size);
  njs_str_t line = {size, input};

  njs_vm_t      *vm;
  njs_int_t     ret;
  njs_opts_t    opts;
  njs_str_t     command;
  njs_vm_opt_t  vm_options;

  FUNC4(&opts, sizeof(njs_opts_t));
  opts.interactive = 1;

  FUNC4(&vm_options, sizeof(njs_vm_opt_t));

  vm_options.init = !opts.interactive;
  vm_options.accumulative = opts.interactive;
  vm_options.backtrace = 1;
  vm_options.quiet = opts.quiet;
  vm_options.sandbox = opts.sandbox;
  vm_options.module = opts.module;

  vm_options.ops = &njs_console_ops;
  vm_options.external = &njs_console;

  ret = FUNC3(&opts, &vm_options, &line);
  FUNC0(input);

  if (ret != NJS_OK)
    return 0;

  return 0;
}