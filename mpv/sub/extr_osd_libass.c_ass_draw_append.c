
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ass_draw {int text; } ;


 int talloc_strdup_append (int ,char const*) ;

__attribute__((used)) static void ass_draw_append(struct ass_draw *d, const char *t)
{
    d->text = talloc_strdup_append(d->text, t);
}
