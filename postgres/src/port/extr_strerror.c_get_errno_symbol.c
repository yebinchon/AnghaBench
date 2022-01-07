
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
get_errno_symbol(int errnum)
{
 switch (errnum)
 {
  case 186:
   return "E2BIG";
  case 185:
   return "EACCES";

  case 184:
   return "EADDRINUSE";


  case 183:
   return "EADDRNOTAVAIL";

  case 182:
   return "EAFNOSUPPORT";

  case 181:
   return "EAGAIN";


  case 180:
   return "EALREADY";

  case 179:
   return "EBADF";

  case 178:
   return "EBADMSG";

  case 177:
   return "EBUSY";
  case 176:
   return "ECHILD";

  case 175:
   return "ECONNABORTED";

  case 174:
   return "ECONNREFUSED";

  case 173:
   return "ECONNRESET";

  case 172:
   return "EDEADLK";
  case 171:
   return "EDOM";
  case 170:
   return "EEXIST";
  case 169:
   return "EFAULT";
  case 168:
   return "EFBIG";

  case 167:
   return "EHOSTUNREACH";

  case 166:
   return "EIDRM";
  case 165:
   return "EINPROGRESS";
  case 164:
   return "EINTR";
  case 163:
   return "EINVAL";
  case 162:
   return "EIO";

  case 161:
   return "EISCONN";

  case 160:
   return "EISDIR";

  case 159:
   return "ELOOP";

  case 158:
   return "EMFILE";
  case 157:
   return "EMLINK";
  case 156:
   return "EMSGSIZE";
  case 155:
   return "ENAMETOOLONG";
  case 154:
   return "ENFILE";
  case 153:
   return "ENOBUFS";
  case 152:
   return "ENODEV";
  case 151:
   return "ENOENT";
  case 150:
   return "ENOEXEC";
  case 149:
   return "ENOMEM";
  case 148:
   return "ENOSPC";
  case 147:
   return "ENOSYS";

  case 146:
   return "ENOTCONN";

  case 145:
   return "ENOTDIR";

  case 144:
   return "ENOTEMPTY";


  case 143:
   return "ENOTSOCK";


  case 142:
   return "ENOTSUP";

  case 141:
   return "ENOTTY";
  case 140:
   return "ENXIO";

  case 139:
   return "EOPNOTSUPP";


  case 138:
   return "EOVERFLOW";

  case 137:
   return "EPERM";
  case 136:
   return "EPIPE";
  case 135:
   return "EPROTONOSUPPORT";
  case 134:
   return "ERANGE";

  case 133:
   return "EROFS";

  case 132:
   return "ESRCH";

  case 131:
   return "ETIMEDOUT";


  case 130:
   return "ETXTBSY";


  case 129:
   return "EWOULDBLOCK";

  case 128:
   return "EXDEV";
 }

 return ((void*)0);
}
