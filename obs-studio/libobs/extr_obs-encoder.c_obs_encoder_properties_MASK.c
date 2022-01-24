#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_properties_t ;
struct TYPE_6__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * (* get_properties ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  type_data; int /*<<< orphan*/ * (* get_properties2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_1__ context; TYPE_2__ orig_info; } ;
typedef  TYPE_3__ obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

obs_properties_t *FUNC4(const obs_encoder_t *encoder)
{
	if (!FUNC0(encoder, "obs_encoder_properties"))
		return NULL;

	if (encoder->orig_info.get_properties2) {
		obs_properties_t *props;
		props = encoder->orig_info.get_properties2(
			encoder->context.data, encoder->orig_info.type_data);
		FUNC1(props, encoder->context.settings);
		return props;

	} else if (encoder->orig_info.get_properties) {
		obs_properties_t *props;
		props = encoder->orig_info.get_properties(
			encoder->context.data);
		FUNC1(props, encoder->context.settings);
		return props;
	}

	return NULL;
}