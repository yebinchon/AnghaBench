
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int str3 ;
typedef int str2 ;
typedef int str1 ;
struct TYPE_3__ {int serial; int minor_code; int request_code; int error_code; } ;
typedef TYPE_1__ XErrorEvent ;
typedef int Display ;


 int LOG_ERROR ;
 int XGetErrorText (int *,int ,char*,int) ;
 int blog (int ,char*,char*,char*,char*,int ) ;

__attribute__((used)) static int x_error_handler(Display *display, XErrorEvent *error)
{
 char str1[512];
 char str2[512];
 char str3[512];
 XGetErrorText(display, error->error_code, str1, sizeof(str1));
 XGetErrorText(display, error->request_code, str2, sizeof(str2));
 XGetErrorText(display, error->minor_code, str3, sizeof(str3));

 blog(LOG_ERROR,
      "X Error: %s, Major opcode: %s, "
      "Minor opcode: %s, Serial: %lu",
      str1, str2, str3, error->serial);
 return 0;
}
