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
struct nvenc_data {size_t buf_count; int /*<<< orphan*/  textures; int /*<<< orphan*/  bitstreams; } ;
struct nv_texture {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nv_texture*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct nvenc_data*,struct nv_texture*) ; 

__attribute__((used)) static bool FUNC3(struct nvenc_data *enc)
{
	FUNC1(enc->bitstreams, enc->buf_count);
	for (size_t i = 0; i < enc->buf_count; i++) {
		struct nv_texture texture;
		if (!FUNC2(enc, &texture)) {
			return false;
		}

		FUNC0(enc->textures, &texture);
	}

	return true;
}