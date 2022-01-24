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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {size_t init_data_len; int part; int has_qlog; int /*<<< orphan*/  log_name; int /*<<< orphan*/  route_name; int /*<<< orphan*/  lock; int /*<<< orphan*/ * init_data; } ;
typedef  TYPE_1__ LoggerState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(LoggerState *s, const char* log_name, const uint8_t* init_data, size_t init_data_len, bool has_qlog) {
  FUNC4(s, 0, sizeof(*s));
  if (init_data) {
    s->init_data = (uint8_t*)FUNC2(init_data_len);
    FUNC0(s->init_data);
    FUNC3(s->init_data, init_data, init_data_len);
    s->init_data_len = init_data_len;
  }

  FUNC9(0);

  FUNC5(&s->lock, NULL);

  s->part = -1;
  s->has_qlog = has_qlog;

  time_t rawtime = FUNC8(NULL);
  struct tm timeinfo;
  FUNC1(&rawtime, &timeinfo);

  FUNC7(s->route_name, sizeof(s->route_name),
           "%Y-%m-%d--%H-%M-%S", &timeinfo);
  FUNC6(s->log_name, sizeof(s->log_name), "%s", log_name);
}