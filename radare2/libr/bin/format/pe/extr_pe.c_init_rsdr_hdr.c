
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* free ) (struct SCV_RSDS_HEADER*) ;} ;
typedef TYPE_1__ SCV_RSDS_HEADER ;


 scalar_t__ free_rsdr_hdr ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void init_rsdr_hdr(SCV_RSDS_HEADER* rsds_hdr) {
 memset (rsds_hdr, 0, sizeof (SCV_RSDS_HEADER));
 rsds_hdr->free = (void (*)(struct SCV_RSDS_HEADER*))free_rsdr_hdr;
}
