
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
struct MPContext {int mconfig; } ;
typedef int m_profile_t ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ bstr ;


 char* BSTR_P (TYPE_1__) ;
 int FILE_LOCAL_FLAGS ;
 int MP_INFO (struct MPContext*,char*,char*) ;
 int * m_config_get_profile0 (int ,char*) ;
 int m_config_set_profile (int ,char*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void mp_auto_load_profile(struct MPContext *mpctx, char *category,
                                 bstr item)
{
    if (!item.len)
        return;

    char t[512];
    snprintf(t, sizeof(t), "%s.%.*s", category, BSTR_P(item));
    m_profile_t *p = m_config_get_profile0(mpctx->mconfig, t);
    if (p) {
        MP_INFO(mpctx, "Auto-loading profile '%s'\n", t);
        m_config_set_profile(mpctx->mconfig, t, FILE_LOCAL_FLAGS);
    }
}
