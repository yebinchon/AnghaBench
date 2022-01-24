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
struct vec4 {int dummy; } ;
struct obs_core_video {int texture_converted; int /*<<< orphan*/ * conversion_techs; int /*<<< orphan*/ * convert_textures; int /*<<< orphan*/  conversion_width_i; int /*<<< orphan*/ * color_matrix; int /*<<< orphan*/ * conversion_effect; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vec4*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  render_convert_texture_name ; 
 int /*<<< orphan*/  FUNC8 (struct vec4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct obs_core_video *video,
				   gs_texture_t *texture)
{
	FUNC6(render_convert_texture_name);

	gs_effect_t *effect = video->conversion_effect;
	gs_eparam_t *color_vec0 =
		FUNC0(effect, "color_vec0");
	gs_eparam_t *color_vec1 =
		FUNC0(effect, "color_vec1");
	gs_eparam_t *color_vec2 =
		FUNC0(effect, "color_vec2");
	gs_eparam_t *image = FUNC0(effect, "image");
	gs_eparam_t *width_i = FUNC0(effect, "width_i");

	struct vec4 vec0, vec1, vec2;
	FUNC8(&vec0, video->color_matrix[4], video->color_matrix[5],
		 video->color_matrix[6], video->color_matrix[7]);
	FUNC8(&vec1, video->color_matrix[0], video->color_matrix[1],
		 video->color_matrix[2], video->color_matrix[3]);
	FUNC8(&vec2, video->color_matrix[8], video->color_matrix[9],
		 video->color_matrix[10], video->color_matrix[11]);

	FUNC4(false);

	if (video->convert_textures[0]) {
		FUNC2(image, texture);
		FUNC3(color_vec0, &vec0);
		FUNC7(effect, video->convert_textures[0],
				     video->conversion_techs[0]);

		if (video->convert_textures[1]) {
			FUNC2(image, texture);
			FUNC3(color_vec1, &vec1);
			if (!video->convert_textures[2])
				FUNC3(color_vec2, &vec2);
			FUNC1(width_i, video->conversion_width_i);
			FUNC7(effect, video->convert_textures[1],
					     video->conversion_techs[1]);

			if (video->convert_textures[2]) {
				FUNC2(image, texture);
				FUNC3(color_vec2, &vec2);
				FUNC1(width_i,
						    video->conversion_width_i);
				FUNC7(
					effect, video->convert_textures[2],
					video->conversion_techs[2]);
			}
		}
	}

	FUNC4(true);

	video->texture_converted = true;

	FUNC5(render_convert_texture_name);
}