
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ass_draw {int * text; } ;


 int talloc_free (int *) ;

__attribute__((used)) static void ass_draw_reset(struct ass_draw *d)
{
    talloc_free(d->text);
    d->text = ((void*)0);
}
