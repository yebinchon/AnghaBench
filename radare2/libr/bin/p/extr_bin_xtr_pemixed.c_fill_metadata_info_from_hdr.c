
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* xtr_type; int * libname; int * type; int * machine; scalar_t__ bits; int * arch; } ;
typedef TYPE_1__ RBinXtrMetadata ;



__attribute__((used)) static void fill_metadata_info_from_hdr(RBinXtrMetadata *meta, void *foo) {
 meta->arch = ((void*)0);
 meta->bits = 0;
 meta->machine = ((void*)0);
 meta->type = ((void*)0);
 meta->libname = ((void*)0);
 meta->xtr_type = "net";

}
