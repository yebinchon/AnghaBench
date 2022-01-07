
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct zip_dirent {int version_needed; int bitflags; int * comment; int * extra_fields; scalar_t__ ext_attrib; scalar_t__ int_attrib; scalar_t__ disk_number; scalar_t__ last_mod; int comp_method; scalar_t__ version_madeby; } ;
struct tm {int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_zone; int tm_gmtoff; scalar_t__ tm_isdst; scalar_t__ tm_yday; scalar_t__ tm_wday; scalar_t__ tm_sec; } ;


 int ZIP_CM_DEFLATE ;
 int _zip_ef_free (int *) ;
 int _zip_string_free (int *) ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ mktime (struct tm*) ;
 int time (scalar_t__*) ;

void
_zip_dirent_torrent_normalize(struct zip_dirent *de)
{
    static struct tm torrenttime;
    static time_t last_mod = 0;


    if (last_mod == 0) {





 torrenttime.tm_sec = 0;
 torrenttime.tm_min = 32;
 torrenttime.tm_hour = 23;
 torrenttime.tm_mday = 24;
 torrenttime.tm_mon = 11;
 torrenttime.tm_year = 96;
 torrenttime.tm_wday = 0;
 torrenttime.tm_yday = 0;
 torrenttime.tm_isdst = 0;
 last_mod = mktime(&torrenttime);
    }

    de->version_madeby = 0;
    de->version_needed = 20;
    de->bitflags = 2;
    de->comp_method = ZIP_CM_DEFLATE;
    de->last_mod = last_mod;

    de->disk_number = 0;
    de->int_attrib = 0;
    de->ext_attrib = 0;

    _zip_ef_free(de->extra_fields);
    de->extra_fields = ((void*)0);
    _zip_string_free(de->comment);
    de->comment = ((void*)0);
}
