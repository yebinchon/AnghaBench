
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct shader_glsl_priv {int program_lookup; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_12__ {int id; } ;
struct glsl_shader_prog_link {int program_lookup_entry; TYPE_5__ cs; TYPE_4__ ps; TYPE_3__ gs; TYPE_2__ ds; TYPE_1__ hs; TYPE_6__ vs; } ;
struct glsl_program_key {int cs_id; int ps_id; int gs_id; int ds_id; int hs_id; int vs_id; } ;


 int ERR (char*) ;
 int wine_rb_put (int *,struct glsl_program_key*,int *) ;

__attribute__((used)) static void add_glsl_program_entry(struct shader_glsl_priv *priv, struct glsl_shader_prog_link *entry)
{
    struct glsl_program_key key;

    key.vs_id = entry->vs.id;
    key.hs_id = entry->hs.id;
    key.ds_id = entry->ds.id;
    key.gs_id = entry->gs.id;
    key.ps_id = entry->ps.id;
    key.cs_id = entry->cs.id;

    if (wine_rb_put(&priv->program_lookup, &key, &entry->program_lookup_entry) == -1)
    {
        ERR("Failed to insert program entry.\n");
    }
}
