
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTES_CONSUMED ;

__attribute__((used)) static int update_bytes_consumed (int sz) {
 BYTES_CONSUMED += sz;
 return sz;
}
