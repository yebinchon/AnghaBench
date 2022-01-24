#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lineno; char* path; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_1__ source_file ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_debug_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static source_file*
FUNC6(mrb_state *mrb, mrb_debug_context *dbg, char *filename)
{
  source_file *file;

  file = (source_file*)FUNC2(mrb, sizeof(source_file));

  FUNC1(file, '\0', sizeof(source_file));
  file->fp = FUNC0(filename, "rb");

  if (file->fp == NULL) {
    FUNC3(mrb, file);
    return NULL;
  }

  file->lineno = 1;
  file->path = (char*)FUNC2(mrb, FUNC5(filename) + 1);
  FUNC4(file->path, filename);
  return file;
}