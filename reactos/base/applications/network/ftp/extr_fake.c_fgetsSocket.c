
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ASCII ;
 int SOCKET_ERROR ;
 int checkRecv (int) ;
 int printf (char*,...) ;
 int recv (int,char*,int,int ) ;

char *fgetsSocket(int s, char *string)
{
   char buffer[2] = {0};
   int i, count;

   for (i = 0, count = 1; count != 0 && buffer[0] != '\n'; i++)
   {
      checkRecv(s);

      count = recv(s, buffer, 1, 0);

      if (count == SOCKET_ERROR)
      {
     printf("Error in fgetssocket");
     return ((void*)0);
      }

      if (count == 1)
      {
     string[i] = buffer[0];

     if (i == MAX_ASCII - 3)
     {
        count = 0;
        string[++i] = '\n';
        string[++i] = '\0';
     }
      }
      else
      {
     if (i == 0)
        return ((void*)0);
     else
     {
        string[i] = '\n';
        string[i + 1] = '\0';
        return string;
     }

      }

   }
   string[i] = '\0';




   return string;
}
