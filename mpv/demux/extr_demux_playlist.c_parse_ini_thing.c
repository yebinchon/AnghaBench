
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct pl_parser {scalar_t__ probing; } ;
struct TYPE_15__ {int len; int member_0; } ;
typedef TYPE_1__ bstr ;


 int bstr0 (char const*) ;
 scalar_t__ bstr_case_startswith (TYPE_1__,int ) ;
 scalar_t__ bstr_endswith0 (TYPE_1__,char*) ;
 TYPE_1__ bstr_splice (TYPE_1__,int,int) ;
 scalar_t__ bstr_split_tok (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ bstr_startswith0 (TYPE_1__,char*) ;
 TYPE_1__ bstr_strip (TYPE_1__) ;
 scalar_t__ bstrcasecmp0 (TYPE_1__,char const*) ;
 int pl_add (struct pl_parser*,TYPE_1__) ;
 int pl_eof (struct pl_parser*) ;
 TYPE_1__ pl_get_line (struct pl_parser*) ;

__attribute__((used)) static int parse_ini_thing(struct pl_parser *p, const char *header,
                           const char *entry)
{
    bstr line = {0};
    while (!line.len && !pl_eof(p))
        line = bstr_strip(pl_get_line(p));
    if (bstrcasecmp0(line, header) != 0)
        return -1;
    if (p->probing)
        return 0;
    while (!pl_eof(p)) {
        line = bstr_strip(pl_get_line(p));
        bstr key, value;
        if (bstr_split_tok(line, "=", &key, &value) &&
            bstr_case_startswith(key, bstr0(entry)))
        {
            value = bstr_strip(value);
            if (bstr_startswith0(value, "\"") && bstr_endswith0(value, "\""))
                value = bstr_splice(value, 1, -1);
            pl_add(p, value);
        }
    }
    return 0;
}
