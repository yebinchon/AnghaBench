
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;


 scalar_t__ UT64_MAX ;

__attribute__((used)) static const bool isInvalid (ut64 addr) {
 return (!addr || addr == UT64_MAX);
}
