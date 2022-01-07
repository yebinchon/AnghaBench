
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int profile_call ;


 int bfree (int *) ;
 int free_call_children (int *) ;

__attribute__((used)) static void free_call_context(profile_call *context)
{
 free_call_children(context);
 bfree(context);
}
