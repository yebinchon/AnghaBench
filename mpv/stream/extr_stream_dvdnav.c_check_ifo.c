
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dvd_probe (char const*,char*,char*) ;
 int mp_basename (char const*) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static bool check_ifo(const char *path)
{
    if (strcasecmp(mp_basename(path), "video_ts.ifo"))
        return 0;

    return dvd_probe(path, ".ifo", "DVDVIDEO-VMG");
}
