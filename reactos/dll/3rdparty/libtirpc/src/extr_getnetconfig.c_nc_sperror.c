
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** _nc_errors ;
 int nc_error ;

char *
nc_sperror()
{
    const char *message;

    switch(nc_error) {
    case 130:
  message = _nc_errors[0];
  break;
    case 131:
  message = _nc_errors[1];
  break;
    case 128:
  message = _nc_errors[2];
  break;
    case 132:
  message = _nc_errors[3];
  break;
    case 129:
  message = _nc_errors[4];
  break;
    default:
  message = "Unknown network selection error";
    }

    return ((char *)message);
}
