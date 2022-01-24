#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kms {TYPE_1__* connector; int /*<<< orphan*/  log; } ;
struct drm_mode_spec {int type; int /*<<< orphan*/  refresh; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {scalar_t__ count_modes; } ;

/* Variables and functions */
#define  DRM_MODE_SPEC_BY_IDX 131 
#define  DRM_MODE_SPEC_BY_NUMBERS 130 
#define  DRM_MODE_SPEC_HIGHEST 129 
#define  DRM_MODE_SPEC_PREFERRED 128 
 int /*<<< orphan*/  FUNC0 (struct kms*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kms*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct drm_mode_spec*) ; 
 int /*<<< orphan*/  FUNC4 (struct kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct kms*) ; 
 int /*<<< orphan*/  FUNC7 (struct kms*) ; 

__attribute__((used)) static bool FUNC8(struct kms *kms, const char *mode_spec)
{
    if (kms->connector->count_modes <= 0) {
        FUNC0(kms, "No available modes\n");
        return false;
    }

    struct drm_mode_spec parsed;
    if (!FUNC3(mode_spec, &parsed)) {
        FUNC0(kms, "Parse error\n");
        goto err;
    }

    switch (parsed.type) {
    case DRM_MODE_SPEC_BY_IDX:
        if (!FUNC4(kms, parsed.idx))
            goto err;
        break;
    case DRM_MODE_SPEC_BY_NUMBERS:
        if (!FUNC5(kms, parsed.width, parsed.height, parsed.refresh,
                                   mode_spec))
            goto err;
        break;
    case DRM_MODE_SPEC_PREFERRED:
        if (!FUNC7(kms))
            goto err;
        break;
    case DRM_MODE_SPEC_HIGHEST:
        if (!FUNC6(kms))
            goto err;
        break;
    default:
        FUNC0(kms, "setup_mode: Internal error\n");
        goto err;
    }

    return true;

err:
    FUNC1(kms, "Available modes:\n");
    FUNC2(kms->log, kms->connector);
    return false;
}