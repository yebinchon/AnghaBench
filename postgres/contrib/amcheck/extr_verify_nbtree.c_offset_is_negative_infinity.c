
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OffsetNumber ;
typedef int BTPageOpaque ;


 scalar_t__ P_FIRSTDATAKEY (int ) ;
 int P_ISLEAF (int ) ;

__attribute__((used)) static inline bool
offset_is_negative_infinity(BTPageOpaque opaque, OffsetNumber offset)
{
 return !P_ISLEAF(opaque) && offset == P_FIRSTDATAKEY(opaque);
}
