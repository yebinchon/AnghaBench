#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  type_data; int /*<<< orphan*/  (* get_defaults2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_defaults ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  settings; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct obs_encoder {TYPE_2__ orig_info; TYPE_3__ context; TYPE_1__ pause; int /*<<< orphan*/  outputs_mutex; int /*<<< orphan*/  callbacks_mutex; int /*<<< orphan*/  init_mutex; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_OBJ_TYPE_ENCODER ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct obs_encoder *encoder, const char *name,
			 obs_data_t *settings, obs_data_t *hotkey_data)
{
	pthread_mutexattr_t attr;

	FUNC2(&encoder->init_mutex);
	FUNC2(&encoder->callbacks_mutex);
	FUNC2(&encoder->outputs_mutex);
	FUNC2(&encoder->pause.mutex);

	if (FUNC3(&attr) != 0)
		return false;
	if (FUNC4(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return false;
	if (!FUNC0(&encoder->context, OBS_OBJ_TYPE_ENCODER,
				   settings, name, hotkey_data, false))
		return false;
	if (FUNC1(&encoder->init_mutex, &attr) != 0)
		return false;
	if (FUNC1(&encoder->callbacks_mutex, &attr) != 0)
		return false;
	if (FUNC1(&encoder->outputs_mutex, NULL) != 0)
		return false;
	if (FUNC1(&encoder->pause.mutex, NULL) != 0)
		return false;

	if (encoder->orig_info.get_defaults) {
		encoder->orig_info.get_defaults(encoder->context.settings);
	}
	if (encoder->orig_info.get_defaults2) {
		encoder->orig_info.get_defaults2(encoder->context.settings,
						 encoder->orig_info.type_data);
	}

	return true;
}