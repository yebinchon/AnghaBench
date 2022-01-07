
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_NOT_FOUND ;
 int NO_RECOVERY ;
 int TRY_AGAIN ;
 char const* hstrerror (int) ;

const char *
gai_strerror(int errcode)
{
 switch (errcode)
 {
  case 130:
   return "Unknown host";
  case 136:
   return "Host name lookup failure";


  case 135:
   return "Invalid argument";


  case 133:
   return "Address family not supported";


  case 132:
   return "Not enough memory";


  case 131:
   return "No host data of that type was found";


  case 129:
   return "Class type not found";


  case 128:
   return "Socket type not supported";

  default:
   return "Unknown server error";
 }

}
