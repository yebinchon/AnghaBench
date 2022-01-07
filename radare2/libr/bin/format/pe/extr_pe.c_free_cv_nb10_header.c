
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file_name; } ;
typedef TYPE_1__ SCV_NB10_HEADER ;


 int R_FREE (int ) ;

__attribute__((used)) static void free_cv_nb10_header(SCV_NB10_HEADER* cv_nb10_header) {
 R_FREE (cv_nb10_header->file_name);
}
