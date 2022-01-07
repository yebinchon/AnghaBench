
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int output_plugin_options; TYPE_1__* output_plugin_private; int context; } ;
struct TYPE_8__ {int output_type; } ;
struct TYPE_7__ {scalar_t__ protocol_version; int publications; int publication_names; int context; } ;
typedef TYPE_1__ PGOutputData ;
typedef TYPE_2__ OutputPluginOptions ;
typedef TYPE_3__ LogicalDecodingContext ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ LOGICALREP_PROTO_MIN_VERSION_NUM ;
 scalar_t__ LOGICALREP_PROTO_VERSION_NUM ;
 int NIL ;
 int OUTPUT_PLUGIN_BINARY_OUTPUT ;
 int PUBLICATIONOID ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int init_rel_sync_cache (int ) ;
 int list_length (int ) ;
 TYPE_1__* palloc0 (int) ;
 int parse_output_parameters (int ,scalar_t__*,int *) ;
 int publication_invalidation_cb ;
 int publications_valid ;

__attribute__((used)) static void
pgoutput_startup(LogicalDecodingContext *ctx, OutputPluginOptions *opt,
     bool is_init)
{
 PGOutputData *data = palloc0(sizeof(PGOutputData));


 data->context = AllocSetContextCreate(ctx->context,
            "logical replication output context",
            ALLOCSET_DEFAULT_SIZES);

 ctx->output_plugin_private = data;


 opt->output_type = OUTPUT_PLUGIN_BINARY_OUTPUT;






 if (!is_init)
 {

  parse_output_parameters(ctx->output_plugin_options,
        &data->protocol_version,
        &data->publication_names);


  if (data->protocol_version > LOGICALREP_PROTO_VERSION_NUM)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("client sent proto_version=%d but we only support protocol %d or lower",
       data->protocol_version, LOGICALREP_PROTO_VERSION_NUM)));

  if (data->protocol_version < LOGICALREP_PROTO_MIN_VERSION_NUM)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("client sent proto_version=%d but we only support protocol %d or higher",
       data->protocol_version, LOGICALREP_PROTO_MIN_VERSION_NUM)));

  if (list_length(data->publication_names) < 1)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("publication_names parameter missing")));


  data->publications = NIL;
  publications_valid = 0;
  CacheRegisterSyscacheCallback(PUBLICATIONOID,
           publication_invalidation_cb,
           (Datum) 0);


  init_rel_sync_cache(CacheMemoryContext);
 }
}
