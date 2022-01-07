
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ UTF16_HIGH_HEAD (unsigned int const) ;

__attribute__((used)) static uint32_t mysqlnd_mbcharlen_utf16(const unsigned int utf16)
{
  return UTF16_HIGH_HEAD(utf16) ? 4 : 2;
}
