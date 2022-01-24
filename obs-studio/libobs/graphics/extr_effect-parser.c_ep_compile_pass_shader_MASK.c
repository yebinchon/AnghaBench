#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct gs_effect_technique {int /*<<< orphan*/  name; } ;
struct darray {int /*<<< orphan*/  num; int /*<<< orphan*/  array; } ;
struct TYPE_12__ {struct darray da; } ;
struct TYPE_10__ {struct darray da; } ;
struct gs_effect_pass {TYPE_6__ pixelshader_params; int /*<<< orphan*/ * pixelshader; TYPE_4__ vertshader_params; int /*<<< orphan*/ * vertshader; } ;
struct TYPE_11__ {int /*<<< orphan*/  da; } ;
struct TYPE_9__ {int /*<<< orphan*/  da; } ;
struct ep_pass {TYPE_5__ fragment_program; TYPE_3__ vertex_program; } ;
struct TYPE_7__ {int /*<<< orphan*/  file; } ;
struct TYPE_8__ {TYPE_1__ lex; } ;
struct effect_parser {TYPE_2__ cfp; } ;
struct dstr {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  gs_shader_t ;
typedef  enum gs_shader_type { ____Placeholder_gs_shader_type } gs_shader_type ;

/* Variables and functions */
 int GS_SHADER_PIXEL ; 
 int GS_SHADER_VERTEX ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 size_t UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct darray*) ; 
 int /*<<< orphan*/  FUNC3 (struct darray*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dstr*) ; 
 int FUNC11 (struct effect_parser*,struct darray*,struct darray*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct effect_parser*,struct dstr*,int /*<<< orphan*/ *,struct darray*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC15(struct effect_parser *ep,
					  struct gs_effect_technique *tech,
					  struct gs_effect_pass *pass,
					  struct ep_pass *pass_in,
					  size_t pass_idx,
					  enum gs_shader_type type)
{
	struct dstr shader_str;
	struct dstr location;
	struct darray used_params;         /* struct dstr */
	struct darray *pass_params = NULL; /* struct pass_shaderparam */
	gs_shader_t *shader = NULL;
	bool success = true;

	FUNC10(&shader_str);
	FUNC3(&used_params);
	FUNC10(&location);

	FUNC8(&location, ep->cfp.lex.file);
	if (type == GS_SHADER_VERTEX)
		FUNC6(&location, " (Vertex ");
	else if (type == GS_SHADER_PIXEL)
		FUNC6(&location, " (Pixel ");
	/*else if (type == SHADER_GEOMETRY)
		dstr_cat(&location, " (Geometry ");*/

	FUNC0(pass_idx <= UINT_MAX);
	FUNC7(&location, "shader, technique %s, pass %u)", tech->name,
		  (unsigned)pass_idx);

	if (type == GS_SHADER_VERTEX) {
		FUNC12(ep, &shader_str,
				    &pass_in->vertex_program.da, &used_params);

		pass->vertshader = FUNC14(shader_str.array,
							  location.array, NULL);

		shader = pass->vertshader;
		pass_params = &pass->vertshader_params.da;
	} else if (type == GS_SHADER_PIXEL) {
		FUNC12(ep, &shader_str,
				    &pass_in->fragment_program.da,
				    &used_params);

		pass->pixelshader = FUNC13(shader_str.array,
							  location.array, NULL);

		shader = pass->pixelshader;
		pass_params = &pass->pixelshader_params.da;
	}

#if defined(_DEBUG) && defined(_DEBUG_SHADERS)
	blog(LOG_DEBUG, "\t\t\t%s Shader:",
	     type == GS_SHADER_VERTEX ? "Vertex" : "Fragment");
	blog(LOG_DEBUG, "\t\t\tCode:");
	debug_print_string("\t\t\t\t\t", shader_str.array);
	blog(LOG_DEBUG, "\t\t\tParameters:");
#endif

	if (shader)
		success = FUNC11(ep, pass_params,
						       &used_params, shader);
	else
		success = false;

	FUNC9(&location);
	FUNC5(used_params.array, used_params.num);
	FUNC2(&used_params);
	FUNC9(&shader_str);

	return success;
}