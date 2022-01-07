
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ass_draw {int scale; int text; } ;


 int MPMAX (int ,int) ;
 int talloc_asprintf_append (int ,char*,int ) ;

__attribute__((used)) static void ass_draw_start(struct ass_draw *d)
{
    d->scale = MPMAX(d->scale, 1);
    d->text = talloc_asprintf_append(d->text, "{\\p%d}", d->scale);
}
