
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs2_ctz {void* size; void* head; } ;


 void* lfs2_fromle32 (void*) ;

__attribute__((used)) static void lfs2_ctz_fromle32(struct lfs2_ctz *ctz) {
    ctz->head = lfs2_fromle32(ctz->head);
    ctz->size = lfs2_fromle32(ctz->size);
}
