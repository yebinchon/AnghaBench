
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pull_filter {scalar_t__ type; int size; int pattern; struct pull_filter* next; } ;
struct options {TYPE_1__* pull_filter_list; } ;
struct TYPE_2__ {struct pull_filter* head; } ;


 int D_LOW ;
 int D_PUSH ;
 int M_WARN ;
 scalar_t__ PUF_TYPE_ACCEPT ;
 scalar_t__ PUF_TYPE_IGNORE ;
 scalar_t__ PUF_TYPE_REJECT ;
 int SIGUSR1 ;
 int msg (int ,char*,char*) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int throw_signal_soft (int ,char*) ;

__attribute__((used)) static bool
apply_pull_filter(const struct options *o, char *line)
{
    struct pull_filter *f;

    if (!o->pull_filter_list)
    {
        return 1;
    }

    for (f = o->pull_filter_list->head; f; f = f->next)
    {
        if (f->type == PUF_TYPE_ACCEPT && strncmp(line, f->pattern, f->size) == 0)
        {
            msg(D_LOW, "Pushed option accepted by filter: '%s'", line);
            return 1;
        }
        else if (f->type == PUF_TYPE_IGNORE && strncmp(line, f->pattern, f->size) == 0)
        {
            msg(D_PUSH, "Pushed option removed by filter: '%s'", line);
            *line = '\0';
            return 1;
        }
        else if (f->type == PUF_TYPE_REJECT && strncmp(line, f->pattern, f->size) == 0)
        {
            msg(M_WARN, "Pushed option rejected by filter: '%s'. Restarting.", line);
            *line = '\0';
            throw_signal_soft(SIGUSR1, "Offending option received from server");
            return 0;
        }
    }
    return 1;
}
