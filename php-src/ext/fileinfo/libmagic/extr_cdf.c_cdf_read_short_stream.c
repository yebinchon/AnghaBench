
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * sst_tab; } ;
typedef TYPE_1__ cdf_stream_t ;
typedef int cdf_sat_t ;
typedef int cdf_info_t ;
typedef int cdf_header_t ;
struct TYPE_10__ {scalar_t__ d_type; scalar_t__ d_stream_first_sector; int d_size; } ;
typedef TYPE_2__ cdf_directory_t ;
struct TYPE_11__ {size_t dir_len; TYPE_2__* dir_tab; } ;
typedef TYPE_3__ cdf_dir_t ;


 scalar_t__ CDF_DIR_TYPE_ROOT_STORAGE ;
 int DPRINTF (char*) ;
 int cdf_read_long_sector_chain (int const*,int const*,int const*,scalar_t__,int ,TYPE_1__*) ;
 int cdf_zero_stream (TYPE_1__*) ;

int
cdf_read_short_stream(const cdf_info_t *info, const cdf_header_t *h,
    const cdf_sat_t *sat, const cdf_dir_t *dir, cdf_stream_t *scn,
    const cdf_directory_t **root)
{
 size_t i;
 const cdf_directory_t *d;

 *root = ((void*)0);
 for (i = 0; i < dir->dir_len; i++)
  if (dir->dir_tab[i].d_type == CDF_DIR_TYPE_ROOT_STORAGE)
   break;


 if (i == dir->dir_len) {
  DPRINTF(("Cannot find root storage dir\n"));
  goto out;
 }
 d = &dir->dir_tab[i];
 *root = d;


 if (d->d_stream_first_sector < 0) {
  DPRINTF(("No first secror in dir\n"));
  goto out;
 }

 return cdf_read_long_sector_chain(info, h, sat,
     d->d_stream_first_sector, d->d_size, scn);
out:
 scn->sst_tab = ((void*)0);
 (void)cdf_zero_stream(scn);
 return 0;
}
