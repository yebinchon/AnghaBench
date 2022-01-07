
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_external {int ass; int text; } ;


 int destroy_ass_renderer (int *) ;
 int talloc_free (int ) ;

__attribute__((used)) static void destroy_external(struct osd_external *ext)
{
    talloc_free(ext->text);
    destroy_ass_renderer(&ext->ass);
}
