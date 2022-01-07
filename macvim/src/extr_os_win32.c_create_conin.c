
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSECURITY_ATTRIBUTES ;
typedef int HANDLE ;


 int CreateFile (char*,int,int,int ,int ,int ,int ) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int OPEN_EXISTING ;
 int TRUE ;
 int did_create_conin ;
 int g_hConIn ;

__attribute__((used)) static void
create_conin(void)
{
    g_hConIn = CreateFile("CONIN$", GENERIC_READ|GENERIC_WRITE,
   FILE_SHARE_READ|FILE_SHARE_WRITE,
   (LPSECURITY_ATTRIBUTES) ((void*)0),
   OPEN_EXISTING, 0, (HANDLE)((void*)0));
    did_create_conin = TRUE;
}
