
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_tzinfo ;



__attribute__((used)) static void skip_posix_string(const unsigned char **tzf, timelib_tzinfo *tz)
{
 int n_count = 0;

 do {
  if (*tzf[0] == '\n') {
   n_count++;
  }
  (*tzf)++;
 } while (n_count < 2);
}
