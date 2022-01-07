
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int ECONNABORTED ;
 int ECONNREFUSED ;
 int ECONNRESET ;
 int EFAULT ;
 int EHOSTUNREACH ;
 int EINPROGRESS ;
 int EINTR ;
 int EINVAL ;
 int EISCONN ;
 int EMFILE ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENOTCONN ;
 int ENOTSOCK ;
 int EOPNOTSUPP ;
 int EPROTONOSUPPORT ;
 int EWOULDBLOCK ;
 int NOTICE ;
 int WSAGetLastError () ;


 int ereport (int ,int ) ;
 int errmsg_internal (char*,int) ;
 int errno ;

__attribute__((used)) static void
TranslateSocketError(void)
{
 switch (WSAGetLastError())
 {
  case 147:
  case 128:
  case 145:
  case 146:
  case 154:
   errno = EINVAL;
   break;
  case 149:
   errno = EINPROGRESS;
   break;
  case 152:
   errno = EFAULT;
   break;
  case 144:
   errno = EISCONN;
   break;
  case 142:
   errno = EMSGSIZE;
   break;
  case 158:
   errno = EAFNOSUPPORT;
   break;
  case 143:
   errno = EMFILE;
   break;
  case 138:
   errno = ENOBUFS;
   break;
  case 134:
  case 133:
  case 131:
   errno = EPROTONOSUPPORT;
   break;
  case 157:
   errno = ECONNABORTED;
   break;
  case 156:
   errno = ECONNREFUSED;
   break;
  case 155:
   errno = ECONNRESET;
   break;
  case 148:
   errno = EINTR;
   break;
  case 136:
   errno = ENOTSOCK;
   break;
  case 135:
   errno = EOPNOTSUPP;
   break;
  case 130:
   errno = EWOULDBLOCK;
   break;
  case 161:
   errno = EACCES;
   break;
  case 160:
   errno = EADDRINUSE;
   break;
  case 159:
   errno = EADDRNOTAVAIL;
   break;
  case 150:
  case 151:
  case 129:
  case 141:
  case 139:
  case 140:
   errno = EHOSTUNREACH;
   break;
  case 137:
  case 132:
  case 153:
   errno = ENOTCONN;
   break;
  default:
   ereport(NOTICE,
     (errmsg_internal("unrecognized win32 socket error code: %d", WSAGetLastError())));
   errno = EINVAL;
 }
}
