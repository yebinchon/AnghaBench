
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property_action_arg {int action; void* arg; int key; } ;
struct m_property {int dummy; } ;
typedef int bstr ;
struct TYPE_2__ {int filename; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_KEY_ACTION ;
 int M_PROPERTY_UNAVAILABLE ;
 int bstr0 (char*) ;
 char* bstrto0 (char*,int ) ;
 int m_property_strdup_ro (int,void*,char*) ;
 scalar_t__ mp_basename (char*) ;
 scalar_t__ mp_is_url (int ) ;
 scalar_t__ mp_splitext (char*,int *) ;
 int mp_url_unescape_inplace (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,int ) ;

__attribute__((used)) static int mp_property_filename(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->filename)
        return M_PROPERTY_UNAVAILABLE;
    char *filename = talloc_strdup(((void*)0), mpctx->filename);
    if (mp_is_url(bstr0(filename)))
        mp_url_unescape_inplace(filename);
    char *f = (char *)mp_basename(filename);
    if (!f[0])
        f = filename;
    if (action == M_PROPERTY_KEY_ACTION) {
        struct m_property_action_arg *ka = arg;
        if (strcmp(ka->key, "no-ext") == 0) {
            action = ka->action;
            arg = ka->arg;
            bstr root;
            if (mp_splitext(f, &root))
                f = bstrto0(filename, root);
        }
    }
    int r = m_property_strdup_ro(action, arg, f);
    talloc_free(filename);
    return r;
}
