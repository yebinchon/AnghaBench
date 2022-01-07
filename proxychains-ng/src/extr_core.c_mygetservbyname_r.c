
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;


 int ENOENT ;
 int MUTEX_LOCK (int *) ;
 int MUTEX_UNLOCK (int *) ;
 int PDEBUG (char*) ;
 int PFUNC () ;
 struct servent* getservbyname (char const*,char const*) ;
 int getservbyname_r (char const*,char const*,struct servent*,char*,size_t,struct servent**) ;
 int servbyname_lock ;

__attribute__((used)) static int mygetservbyname_r(const char* name, const char* proto, struct servent* result_buf,
      char* buf, size_t buflen, struct servent** result) {
 PFUNC();




 struct servent *res;
 int ret;
 (void) buf; (void) buflen;
 MUTEX_LOCK(&servbyname_lock);
 res = getservbyname(name, proto);
 if(res) {
  *result_buf = *res;
  *result = result_buf;
  ret = 0;
 } else {
  *result = ((void*)0);
  ret = ENOENT;
 }
 MUTEX_UNLOCK(&servbyname_lock);
 return ret;
}
