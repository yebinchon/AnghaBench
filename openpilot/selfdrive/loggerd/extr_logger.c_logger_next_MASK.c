#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* segment_path; } ;
struct TYPE_7__ {int part; int /*<<< orphan*/  lock; TYPE_2__* cur_handle; } ;
typedef  TYPE_1__ LoggerState ;
typedef  TYPE_2__ LoggerHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*) ; 

int FUNC5(LoggerState *s, const char* root_path,
                            char* out_segment_path, size_t out_segment_path_len,
                            int* out_part) {
  FUNC2(&s->lock);
  s->part++;

  LoggerHandle* next_h = FUNC1(s, root_path);
  if (!next_h) {
    FUNC3(&s->lock);
    return -1;
  }

  if (s->cur_handle) {
    FUNC0(s->cur_handle);
  }
  s->cur_handle = next_h;

  if (out_segment_path) {
    FUNC4(out_segment_path, out_segment_path_len, "%s", next_h->segment_path);
  }
  if (out_part) {
    *out_part = s->part;
  }

  FUNC3(&s->lock);
  return 0;
}