
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agraph_refresh_data {int core; } ;
typedef int RCoreTaskOneShot ;


 scalar_t__ agraph_refresh ;
 int r_core_task_enqueue_oneshot (int ,int ,struct agraph_refresh_data*) ;

__attribute__((used)) static void agraph_refresh_oneshot(struct agraph_refresh_data *grd) {
 r_core_task_enqueue_oneshot (grd->core, (RCoreTaskOneShot) agraph_refresh, grd);
}
