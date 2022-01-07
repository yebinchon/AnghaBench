
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_6__ {int page_size; } ;
typedef TYPE_1__ libgdbr_t ;


 int gdbr_lock_enter (TYPE_1__*) ;
 int gdbr_lock_leave (TYPE_1__*) ;
 int gdbr_read_memory_page (TYPE_1__*,int,int *,int) ;

int gdbr_read_memory(libgdbr_t *g, ut64 address, ut8 *buf, int len) {
 int ret_len, ret, tmp;
 int page_size = g->page_size;
 ret_len = 0;

 if (!gdbr_lock_enter (g)) {
  goto end;
 }


 tmp = page_size - (address & (page_size - 1));
 if (tmp >= len) {
  ret_len = gdbr_read_memory_page (g, address, buf, len);
  goto end;
 }
 if ((ret = gdbr_read_memory_page (g, address, buf, tmp)) != tmp) {
  ret_len = ret;
  goto end;
 }
 len -= tmp;
 address += tmp;
 buf += tmp;
 ret_len += ret;

 while (len > page_size) {
  if ((ret = gdbr_read_memory_page (g, address, buf, page_size)) != page_size) {
   if (ret < 1) {
    goto end;
   }
   ret_len += ret;
   goto end;
  }
  len -= page_size;
  address += page_size;
  buf += page_size;
  ret_len += page_size;
 }

 if ((ret = gdbr_read_memory_page (g, address, buf, len)) < 0) {
  goto end;
 }

 ret_len += ret;
end:
 gdbr_lock_leave (g);
 return ret_len;
}
