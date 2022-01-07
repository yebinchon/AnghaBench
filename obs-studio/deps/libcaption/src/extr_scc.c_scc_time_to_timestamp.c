
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double scc_time_to_timestamp(int hh, int mm, int ss, int ff)
{
    return (hh * 3600.0) + (mm * 60.0) + ss + (ff / 29.97);
}
