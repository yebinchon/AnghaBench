
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cdf_stream_t ;
typedef int cdf_sat_t ;
typedef int cdf_info_t ;
typedef int cdf_header_t ;
typedef int cdf_dir_t ;


 int cdf_read_user_stream (int const*,int const*,int const*,int const*,int const*,int const*,char*,int *) ;

int
cdf_read_doc_summary_info(const cdf_info_t *info, const cdf_header_t *h,
    const cdf_sat_t *sat, const cdf_sat_t *ssat, const cdf_stream_t *sst,
    const cdf_dir_t *dir, cdf_stream_t *scn)
{
 return cdf_read_user_stream(info, h, sat, ssat, sst, dir,
     "\05DocumentSummaryInformation", scn);
}
