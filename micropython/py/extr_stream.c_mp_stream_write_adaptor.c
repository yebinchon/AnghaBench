
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_OBJ_FROM_PTR (void*) ;
 int MP_STREAM_RW_WRITE ;
 int mp_stream_write (int ,char const*,size_t,int ) ;

void mp_stream_write_adaptor(void *self, const char *buf, size_t len) {
    mp_stream_write(MP_OBJ_FROM_PTR(self), buf, len, MP_STREAM_RW_WRITE);
}
