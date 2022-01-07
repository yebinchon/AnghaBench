
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int* str; } ;
typedef TYPE_1__ strbuf ;


 TYPE_1__* sb_get (TYPE_1__*,int) ;

__attribute__((used)) static strbuf *
savechar(strbuf *sb, int idx, int c) {
    if (sb == 0 || idx >= sb->size) {
        sb = sb_get(sb, idx + 1);
    }
    sb->str[idx] = c;
    return sb;
}
