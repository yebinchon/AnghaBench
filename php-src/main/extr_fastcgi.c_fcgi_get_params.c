
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env; } ;
typedef TYPE_1__ fcgi_request ;


 int FCGI_HASH_FUNC (unsigned char*,unsigned int) ;
 scalar_t__ UNEXPECTED (int) ;
 int fcgi_hash_set (int *,int ,char*,unsigned int,char*,unsigned int) ;

__attribute__((used)) static int fcgi_get_params(fcgi_request *req, unsigned char *p, unsigned char *end)
{
 unsigned int name_len, val_len;

 while (p < end) {
  name_len = *p++;
  if (UNEXPECTED(name_len >= 128)) {
   if (UNEXPECTED(p + 3 >= end)) return 0;
   name_len = ((name_len & 0x7f) << 24);
   name_len |= (*p++ << 16);
   name_len |= (*p++ << 8);
   name_len |= *p++;
  }
  if (UNEXPECTED(p >= end)) return 0;
  val_len = *p++;
  if (UNEXPECTED(val_len >= 128)) {
   if (UNEXPECTED(p + 3 >= end)) return 0;
   val_len = ((val_len & 0x7f) << 24);
   val_len |= (*p++ << 16);
   val_len |= (*p++ << 8);
   val_len |= *p++;
  }
  if (UNEXPECTED(name_len + val_len > (unsigned int) (end - p))) {

   return 0;
  }
  fcgi_hash_set(&req->env, FCGI_HASH_FUNC(p, name_len), (char*)p, name_len, (char*)p + name_len, val_len);
  p += name_len + val_len;
 }
 return 1;
}
