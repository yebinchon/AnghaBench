
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sym ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {char** osd_msg; int osd_fractions; char* osd_status_msg; } ;


 int assert (int) ;
 int get_current_osd_sym (struct MPContext*,char*,int) ;
 int get_percent_pos (struct MPContext*) ;
 int get_playback_time (struct MPContext*) ;
 int get_time_length (struct MPContext*) ;
 char* mp_property_expand_escaped_string (struct MPContext*,char*) ;
 int sadd_hhmmssff (char**,int ,int) ;
 int sadd_percentage (char**,int ) ;
 int saddf (char**,char*,...) ;
 int talloc_free (char*) ;
 char* talloc_strdup_append (char*,char*) ;

__attribute__((used)) static void sadd_osd_status(char **buffer, struct MPContext *mpctx, int level)
{
    assert(level >= 0 && level <= 3);
    if (level == 0)
        return;
    char *msg = mpctx->opts->osd_msg[level - 1];

    if (msg && msg[0]) {
        char *text = mp_property_expand_escaped_string(mpctx, msg);
        *buffer = talloc_strdup_append(*buffer, text);
        talloc_free(text);
    } else if (level >= 2) {
        bool fractions = mpctx->opts->osd_fractions;
        char sym[10];
        get_current_osd_sym(mpctx, sym, sizeof(sym));
        saddf(buffer, "%s ", sym);
        char *custom_msg = mpctx->opts->osd_status_msg;
        if (custom_msg && level == 3) {
            char *text = mp_property_expand_escaped_string(mpctx, custom_msg);
            *buffer = talloc_strdup_append(*buffer, text);
            talloc_free(text);
        } else {
            sadd_hhmmssff(buffer, get_playback_time(mpctx), fractions);
            if (level == 3) {
                saddf(buffer, " / ");
                sadd_hhmmssff(buffer, get_time_length(mpctx), fractions);
                sadd_percentage(buffer, get_percent_pos(mpctx));
            }
        }
    }
}
