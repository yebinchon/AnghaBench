#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  output_plugin_options; TYPE_1__* output_plugin_private; int /*<<< orphan*/  context; } ;
struct TYPE_8__ {int /*<<< orphan*/  output_type; } ;
struct TYPE_7__ {scalar_t__ protocol_version; int /*<<< orphan*/  publications; int /*<<< orphan*/  publication_names; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ PGOutputData ;
typedef  TYPE_2__ OutputPluginOptions ;
typedef  TYPE_3__ LogicalDecodingContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ LOGICALREP_PROTO_MIN_VERSION_NUM ; 
 scalar_t__ LOGICALREP_PROTO_VERSION_NUM ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  OUTPUT_PLUGIN_BINARY_OUTPUT ; 
 int /*<<< orphan*/  PUBLICATIONOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  publication_invalidation_cb ; 
 int publications_valid ; 

__attribute__((used)) static void
FUNC9(LogicalDecodingContext *ctx, OutputPluginOptions *opt,
				 bool is_init)
{
	PGOutputData *data = FUNC7(sizeof(PGOutputData));

	/* Create our memory context for private allocations. */
	data->context = FUNC0(ctx->context,
										  "logical replication output context",
										  ALLOCSET_DEFAULT_SIZES);

	ctx->output_plugin_private = data;

	/* This plugin uses binary protocol. */
	opt->output_type = OUTPUT_PLUGIN_BINARY_OUTPUT;

	/*
	 * This is replication start and not slot initialization.
	 *
	 * Parse and validate options passed by the client.
	 */
	if (!is_init)
	{
		/* Parse the params and ERROR if we see any we don't recognize */
		FUNC8(ctx->output_plugin_options,
								&data->protocol_version,
								&data->publication_names);

		/* Check if we support requested protocol */
		if (data->protocol_version > LOGICALREP_PROTO_VERSION_NUM)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC4("client sent proto_version=%d but we only support protocol %d or lower",
							data->protocol_version, LOGICALREP_PROTO_VERSION_NUM)));

		if (data->protocol_version < LOGICALREP_PROTO_MIN_VERSION_NUM)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC4("client sent proto_version=%d but we only support protocol %d or higher",
							data->protocol_version, LOGICALREP_PROTO_MIN_VERSION_NUM)));

		if (FUNC6(data->publication_names) < 1)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC4("publication_names parameter missing")));

		/* Init publication state. */
		data->publications = NIL;
		publications_valid = false;
		FUNC1(PUBLICATIONOID,
									  publication_invalidation_cb,
									  (Datum) 0);

		/* Initialize relation schema cache. */
		FUNC5(CacheMemoryContext);
	}
}