
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
typedef int * Walfile ;
struct TYPE_2__ {int currpos; } ;
typedef TYPE_1__ TarMethodFile ;


 int Assert (int ) ;
 int tar_clear_error () ;

__attribute__((used)) static off_t
tar_get_current_pos(Walfile f)
{
 Assert(f != ((void*)0));
 tar_clear_error();

 return ((TarMethodFile *) f)->currpos;
}
