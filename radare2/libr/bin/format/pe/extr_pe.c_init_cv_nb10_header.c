
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* free ) (struct SCV_NB10_HEADER*) ;} ;
typedef TYPE_1__ SCV_NB10_HEADER ;


 scalar_t__ free_cv_nb10_header ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void init_cv_nb10_header(SCV_NB10_HEADER* cv_nb10_header) {
 memset (cv_nb10_header, 0, sizeof (SCV_NB10_HEADER));
 cv_nb10_header->free = (void (*)(struct SCV_NB10_HEADER*))free_cv_nb10_header;
}
