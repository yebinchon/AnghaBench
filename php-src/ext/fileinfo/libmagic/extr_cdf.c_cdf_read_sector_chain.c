
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * sst_tab; } ;
typedef TYPE_1__ cdf_stream_t ;
typedef int cdf_secid_t ;
typedef int cdf_sat_t ;
typedef int cdf_info_t ;
struct TYPE_12__ {size_t h_min_size_standard_stream; } ;
typedef TYPE_2__ cdf_header_t ;


 int cdf_read_long_sector_chain (int const*,TYPE_2__ const*,int const*,int ,size_t,TYPE_1__*) ;
 int cdf_read_short_sector_chain (TYPE_2__ const*,int const*,TYPE_1__ const*,int ,size_t,TYPE_1__*) ;

int
cdf_read_sector_chain(const cdf_info_t *info, const cdf_header_t *h,
    const cdf_sat_t *sat, const cdf_sat_t *ssat, const cdf_stream_t *sst,
    cdf_secid_t sid, size_t len, cdf_stream_t *scn)
{

 if (len < h->h_min_size_standard_stream && sst->sst_tab != ((void*)0))
  return cdf_read_short_sector_chain(h, ssat, sst, sid, len,
      scn);
 else
  return cdf_read_long_sector_chain(info, h, sat, sid, len, scn);
}
