
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_valid_peak(float sig_peak)
{
    return !sig_peak || (sig_peak >= 1 && sig_peak <= 100);
}
