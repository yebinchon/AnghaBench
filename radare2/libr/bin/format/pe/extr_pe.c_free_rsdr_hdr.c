
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file_name; } ;
typedef TYPE_1__ SCV_RSDS_HEADER ;


 int R_FREE (int ) ;

__attribute__((used)) static void free_rsdr_hdr(SCV_RSDS_HEADER* rsds_hdr) {
 R_FREE (rsds_hdr->file_name);
}
