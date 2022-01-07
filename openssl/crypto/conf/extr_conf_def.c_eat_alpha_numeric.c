
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ flag_dollarid; } ;
typedef TYPE_1__ CONF ;


 scalar_t__ IS_ALNUM_PUNCT (TYPE_1__*,char) ;
 scalar_t__ IS_DOLLAR (TYPE_1__*,char) ;
 scalar_t__ IS_ESC (TYPE_1__*,char) ;
 char* scan_esc (TYPE_1__*,char*) ;

__attribute__((used)) static char *eat_alpha_numeric(CONF *conf, char *p)
{
    for (;;) {
        if (IS_ESC(conf, *p)) {
            p = scan_esc(conf, p);
            continue;
        }
        if (!(IS_ALNUM_PUNCT(conf, *p)
              || (conf->flag_dollarid && IS_DOLLAR(conf, *p))))
            return p;
        p++;
    }
}
