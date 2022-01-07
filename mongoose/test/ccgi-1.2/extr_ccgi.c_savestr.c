
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int str; } ;
typedef TYPE_1__ strbuf ;


 TYPE_1__* sb_get (TYPE_1__*,int) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static strbuf *
savestr(strbuf *sb, const char *str) {
    int len = strlen(str);
    if (sb == 0 || len >= sb->size) {
        sb = sb_get(sb, len + 1);
    }
    strcpy(sb->str, str);
    return sb;
}
