
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
struct m_config {TYPE_1__* profiles; } ;
struct TYPE_2__ {int num_opts; int * opts; int desc; int name; struct TYPE_2__* next; } ;
typedef TYPE_1__ m_profile_t ;


 int MPV_FORMAT_NODE_ARRAY ;
 int MPV_FORMAT_NODE_MAP ;
 struct mpv_node* node_array_add (struct mpv_node*,int ) ;
 int node_init (struct mpv_node*,int ,int *) ;
 struct mpv_node* node_map_add (struct mpv_node*,char*,int ) ;
 int node_map_add_string (struct mpv_node*,char*,int ) ;

struct mpv_node m_config_get_profiles(struct m_config *config)
{
    struct mpv_node root;
    node_init(&root, MPV_FORMAT_NODE_ARRAY, ((void*)0));

    for (m_profile_t *profile = config->profiles; profile; profile = profile->next)
    {
        struct mpv_node *entry = node_array_add(&root, MPV_FORMAT_NODE_MAP);

        node_map_add_string(entry, "name", profile->name);
        if (profile->desc)
            node_map_add_string(entry, "profile-desc", profile->desc);

        struct mpv_node *opts =
            node_map_add(entry, "options", MPV_FORMAT_NODE_ARRAY);

        for (int n = 0; n < profile->num_opts; n++) {
            struct mpv_node *opt_entry = node_array_add(opts, MPV_FORMAT_NODE_MAP);
            node_map_add_string(opt_entry, "key", profile->opts[n * 2 + 0]);
            node_map_add_string(opt_entry, "value", profile->opts[n * 2 + 1]);
        }
    }

    return root;
}
