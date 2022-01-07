
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_2__ {int numlibs; } ;
struct r_bin_dyldcache_obj_t {TYPE_1__ hdr; int nlibs; int b; } ;


 int perror (char*) ;
 int r_buf_fread_at (int ,int ,int *,char*,int) ;

__attribute__((used)) static int r_bin_dyldcache_init(struct r_bin_dyldcache_obj_t* bin) {
 int len = r_buf_fread_at (bin->b, 0, (ut8*)&bin->hdr, "16c4i7l", 1);
 if (len == -1) {
  perror ("read (cache_header)");
  return 0;
 }
 bin->nlibs = bin->hdr.numlibs;
 return 1;
}
