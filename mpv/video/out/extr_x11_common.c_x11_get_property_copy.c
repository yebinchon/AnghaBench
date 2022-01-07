
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int dummy; } ;
typedef int Window ;
typedef int Atom ;


 int XFree (void*) ;
 int memcpy (void*,void*,size_t) ;
 void* x11_get_property (struct vo_x11_state*,int ,int ,int ,int,int*) ;

__attribute__((used)) static bool x11_get_property_copy(struct vo_x11_state *x11, Window w,
                                  Atom property, Atom type, int format,
                                  void *dst, size_t dst_size)
{
    bool ret = 0;
    int len;
    void *ptr = x11_get_property(x11, w, property, type, format, &len);
    if (ptr) {
        size_t ib = format == 32 ? sizeof(long) : format / 8;
        if (dst_size / ib >= len) {
            memcpy(dst, ptr, dst_size);
            ret = 1;
        }
        XFree(ptr);
    }
    return ret;
}
