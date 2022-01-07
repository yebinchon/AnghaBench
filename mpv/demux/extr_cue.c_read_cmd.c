
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstr {scalar_t__ len; int * start; } ;
typedef enum cue_command { ____Placeholder_cue_command } cue_command ;
struct TYPE_2__ {int command; int text; } ;


 int CUE_EMPTY ;
 int CUE_ERROR ;
 int WHITESPACE ;
 struct bstr bstr0 (int ) ;
 scalar_t__ bstr_case_startswith (struct bstr,struct bstr) ;
 struct bstr bstr_cut (struct bstr,scalar_t__) ;
 int bstr_getline (struct bstr,struct bstr*) ;
 struct bstr bstr_lstrip (struct bstr) ;
 struct bstr bstr_strip_linebreaks (int ) ;
 TYPE_1__* cue_command_strings ;
 int strchr (int ,int ) ;

__attribute__((used)) static enum cue_command read_cmd(struct bstr *data, struct bstr *out_params)
{
    struct bstr line = bstr_strip_linebreaks(bstr_getline(*data, data));
    line = bstr_lstrip(line);
    if (line.len == 0)
        return CUE_EMPTY;
    for (int n = 0; cue_command_strings[n].command != -1; n++) {
        struct bstr name = bstr0(cue_command_strings[n].text);
        if (bstr_case_startswith(line, name)) {
            struct bstr rest = bstr_cut(line, name.len);
            if (rest.len && !strchr(WHITESPACE, rest.start[0]))
                continue;
            if (out_params)
                *out_params = bstr_lstrip(rest);
            return cue_command_strings[n].command;
        }
    }
    return CUE_ERROR;
}
