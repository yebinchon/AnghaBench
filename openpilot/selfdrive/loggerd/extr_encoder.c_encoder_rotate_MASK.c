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
struct TYPE_3__ {int next_segment; int closing; int rotating; int segment; int opening; int /*<<< orphan*/  lock; scalar_t__ open; int /*<<< orphan*/  next_path; } ;
typedef  TYPE_1__ EncoderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char const*) ; 

void FUNC3(EncoderState *s, const char* new_path, int new_segment) {
  FUNC0(&s->lock);
  FUNC2(s->next_path, sizeof(s->next_path), "%s", new_path);
  s->next_segment = new_segment;
  if (s->open) {
    if (s->next_segment == -1) {
      s->closing = true;
    } else {
      s->rotating = true;
    }
  } else {
    s->segment = s->next_segment;
    s->opening = true;
  }
  FUNC1(&s->lock);
}