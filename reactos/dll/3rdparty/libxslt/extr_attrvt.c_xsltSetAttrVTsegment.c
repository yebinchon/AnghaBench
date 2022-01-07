
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrVTPtr ;
typedef int xsltAttrVT ;
struct TYPE_5__ {int nb_seg; int max_seg; void** segments; } ;


 int MAX_AVT_SEG ;
 int memset (void**,int ,int) ;
 scalar_t__ xmlRealloc (TYPE_1__*,int) ;

__attribute__((used)) static xsltAttrVTPtr
xsltSetAttrVTsegment(xsltAttrVTPtr avt, void *val) {
    if (avt->nb_seg >= avt->max_seg) {
 avt = (xsltAttrVTPtr) xmlRealloc(avt, sizeof(xsltAttrVT) +
   avt->max_seg * sizeof(void *));
 if (avt == ((void*)0)) {
     return ((void*)0);
 }
 memset(&avt->segments[avt->nb_seg], 0, MAX_AVT_SEG*sizeof(void *));
 avt->max_seg += MAX_AVT_SEG;
    }
    avt->segments[avt->nb_seg++] = val;
    return avt;
}
