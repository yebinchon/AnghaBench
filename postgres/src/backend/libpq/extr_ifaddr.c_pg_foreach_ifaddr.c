
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_addr; } ;
struct ifconf {char* ifc_buf; size_t ifc_len; struct ifreq* ifc_req; } ;
typedef scalar_t__ pgsocket ;
typedef int mask ;
typedef int ifc ;
typedef int addr ;
typedef int PgIfAddrCallback ;


 int AF_INET ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 scalar_t__ PGINVALID_SOCKET ;
 int SIOCGIFADDR ;
 int SIOCGIFCONF ;
 int SIOCGIFNETMASK ;
 int SOCK_DGRAM ;
 int _SIZEOF_ADDR_IFREQ (struct ifreq) ;
 int close (scalar_t__) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ ioctl (scalar_t__,int ,...) ;
 int memcpy (struct ifreq*,struct ifreq*,int) ;
 int memset (struct ifconf*,int ,int) ;
 char* realloc (char*,size_t) ;
 int run_ifaddr_callback (int ,void*,int *,int *) ;
 scalar_t__ socket (int ,int ,int ) ;

int
pg_foreach_ifaddr(PgIfAddrCallback callback, void *cb_data)
{
 struct ifconf ifc;
 struct ifreq *ifr,
      *end,
    addr,
    mask;
 char *ptr,
      *buffer = ((void*)0);
 size_t n_buffer = 1024;
 pgsocket sock;

 sock = socket(AF_INET, SOCK_DGRAM, 0);
 if (sock == PGINVALID_SOCKET)
  return -1;

 while (n_buffer < 1024 * 100)
 {
  n_buffer += 1024;
  ptr = realloc(buffer, n_buffer);
  if (!ptr)
  {
   free(buffer);
   close(sock);
   errno = ENOMEM;
   return -1;
  }

  memset(&ifc, 0, sizeof(ifc));
  ifc.ifc_buf = buffer = ptr;
  ifc.ifc_len = n_buffer;

  if (ioctl(sock, SIOCGIFCONF, &ifc) < 0)
  {
   if (errno == EINVAL)
    continue;
   free(buffer);
   close(sock);
   return -1;
  }






  if (ifc.ifc_len < n_buffer - 1024)
   break;
 }

 end = (struct ifreq *) (buffer + ifc.ifc_len);
 for (ifr = ifc.ifc_req; ifr < end;)
 {
  memcpy(&addr, ifr, sizeof(addr));
  memcpy(&mask, ifr, sizeof(mask));
  if (ioctl(sock, SIOCGIFADDR, &addr, sizeof(addr)) == 0 &&
   ioctl(sock, SIOCGIFNETMASK, &mask, sizeof(mask)) == 0)
   run_ifaddr_callback(callback, cb_data,
        &addr.ifr_addr, &mask.ifr_addr);
  ifr = (struct ifreq *) ((char *) ifr + _SIZEOF_ADDR_IFREQ(*ifr));
 }

 free(buffer);
 close(sock);
 return 0;
}
