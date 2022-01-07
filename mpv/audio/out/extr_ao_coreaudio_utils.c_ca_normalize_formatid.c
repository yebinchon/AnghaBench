
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ca_formatid_is_compressed (int ) ;
 int kAudioFormat60958AC3 ;

__attribute__((used)) static uint32_t ca_normalize_formatid(uint32_t formatID)
{
    return ca_formatid_is_compressed(formatID) ? kAudioFormat60958AC3 : formatID;
}
