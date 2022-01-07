
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int memcmp (int const*,char const**,int) ;

__attribute__((used)) static int is_null(const ut8 *buf, int size) {
 const char zero[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 return (!memcmp (buf, &zero, size))? 1: 0;
}
