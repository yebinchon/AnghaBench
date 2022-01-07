
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ swap; } ;
typedef TYPE_1__ LoadState ;


 int IF (int,char*) ;
 int LoadBlock (TYPE_1__*,void*,int) ;

__attribute__((used)) static void LoadMem (LoadState* S, void* b, int n, size_t size)
{
  LoadBlock(S,b,n*size);
  if (S->swap && b)
  {
    char* p=(char*) b;
    char c;
    switch (size)
    {
      case 1:
        break;
      case 2:
       while (n--)
       {
         c=p[0]; p[0]=p[1]; p[1]=c;
         p+=2;
       }
       break;
      case 4:
       while (n--)
       {
         c=p[0]; p[0]=p[3]; p[3]=c;
         c=p[1]; p[1]=p[2]; p[2]=c;
         p+=4;
       }
       break;
      case 8:
       while (n--)
       {
          c=p[0]; p[0]=p[7]; p[7]=c;
          c=p[1]; p[1]=p[6]; p[6]=c;
          c=p[2]; p[2]=p[5]; p[5]=c;
          c=p[3]; p[3]=p[4]; p[4]=c;
          p+=8;
        }
       break;
      default:
        IF(1, "bad size");
       break;
    }
  }
}
