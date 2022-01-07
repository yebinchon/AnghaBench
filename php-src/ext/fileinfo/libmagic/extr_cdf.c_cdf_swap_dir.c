
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* d_size; void* d_stream_first_sector; void* d_modified; void* d_created; void* d_flags; void** d_storage_uuid; void* d_storage; void* d_right_child; void* d_left_child; int d_namelen; } ;
typedef TYPE_1__ cdf_directory_t ;


 void* CAST (int ,void*) ;
 int CDF_TOLE2 (int ) ;
 void* CDF_TOLE4 (void*) ;
 void* CDF_TOLE8 (void*) ;
 int uint32_t ;
 int uint64_t ;

void
cdf_swap_dir(cdf_directory_t *d)
{
 d->d_namelen = CDF_TOLE2(d->d_namelen);
 d->d_left_child = CDF_TOLE4(CAST(uint32_t, d->d_left_child));
 d->d_right_child = CDF_TOLE4(CAST(uint32_t, d->d_right_child));
 d->d_storage = CDF_TOLE4(CAST(uint32_t, d->d_storage));
 d->d_storage_uuid[0] = CDF_TOLE8(d->d_storage_uuid[0]);
 d->d_storage_uuid[1] = CDF_TOLE8(d->d_storage_uuid[1]);
 d->d_flags = CDF_TOLE4(d->d_flags);
 d->d_created = CDF_TOLE8(CAST(uint64_t, d->d_created));
 d->d_modified = CDF_TOLE8(CAST(uint64_t, d->d_modified));
 d->d_stream_first_sector = CDF_TOLE4(
     CAST(uint32_t, d->d_stream_first_sector));
 d->d_size = CDF_TOLE4(d->d_size);
}
