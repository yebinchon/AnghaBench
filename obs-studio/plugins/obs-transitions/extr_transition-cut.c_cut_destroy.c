
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cut_info {int dummy; } ;


 int bfree (struct cut_info*) ;

__attribute__((used)) static void cut_destroy(void *data)
{
 struct cut_info *cut = data;
 bfree(cut);
}
