
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d_unused0; int d_size; int d_stream_first_sector; int d_modified; int d_created; int d_flags; int d_storage_uuid; int d_storage; int d_right_child; int d_left_child; int d_color; int d_type; int d_namelen; int d_name; } ;
typedef TYPE_1__ cdf_directory_t ;


 int CDF_UNPACK (int ) ;
 int CDF_UNPACKA (int ) ;

void
cdf_unpack_dir(cdf_directory_t *d, char *buf)
{
 size_t len = 0;

 CDF_UNPACKA(d->d_name);
 CDF_UNPACK(d->d_namelen);
 CDF_UNPACK(d->d_type);
 CDF_UNPACK(d->d_color);
 CDF_UNPACK(d->d_left_child);
 CDF_UNPACK(d->d_right_child);
 CDF_UNPACK(d->d_storage);
 CDF_UNPACKA(d->d_storage_uuid);
 CDF_UNPACK(d->d_flags);
 CDF_UNPACK(d->d_created);
 CDF_UNPACK(d->d_modified);
 CDF_UNPACK(d->d_stream_first_sector);
 CDF_UNPACK(d->d_size);
 CDF_UNPACK(d->d_unused0);
}
