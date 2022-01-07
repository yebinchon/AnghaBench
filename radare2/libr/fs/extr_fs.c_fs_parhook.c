
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RFSPartition ;


 int r_list_append (int *,int *) ;

__attribute__((used)) static int fs_parhook(void* disk, void* ptr, void* closure) {
 RFSPartition* par = ptr;
 RList* list = (RList*) closure;
 r_list_append (list, par);
 return 0;
}
