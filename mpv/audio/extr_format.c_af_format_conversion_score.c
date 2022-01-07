
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_FORMAT_UNKNOWN ;
 int INT_MIN ;
 scalar_t__ af_fmt_is_float (int) ;
 int af_fmt_is_pcm (int) ;
 scalar_t__ af_fmt_is_planar (int) ;
 int af_fmt_to_bytes (int) ;

int af_format_conversion_score(int dst_format, int src_format)
{
    if (dst_format == AF_FORMAT_UNKNOWN || src_format == AF_FORMAT_UNKNOWN)
        return INT_MIN;
    if (dst_format == src_format)
        return 1024;

    if (!af_fmt_is_pcm(dst_format) || !af_fmt_is_pcm(src_format))
        return INT_MIN;
    int score = 1024;
    if (af_fmt_is_planar(dst_format) != af_fmt_is_planar(src_format))
        score -= 1;
    if (af_fmt_is_float(dst_format) != af_fmt_is_float(src_format)) {
        int dst_bytes = af_fmt_to_bytes(dst_format);
        if (af_fmt_is_float(dst_format)) {

            int bytes = (dst_bytes == 4 ? 3 : 6) - af_fmt_to_bytes(src_format);
            if (bytes >= 0) {
                score -= 8 * bytes;
            } else {
                score += 1024 * (bytes - 1);
            }
        } else {


            score -= 1048576 * (8 - dst_bytes);
        }
        score -= 512;
    } else {
        int bytes = af_fmt_to_bytes(dst_format) - af_fmt_to_bytes(src_format);
        if (bytes > 0) {
            score -= 8 * bytes;
        } else if (bytes < 0) {
            score += 1024 * (bytes - 1);
        }
    }
    return score;
}
