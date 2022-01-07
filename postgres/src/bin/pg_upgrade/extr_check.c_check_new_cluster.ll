; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_new_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_new_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@new_cluster = common dso_local global i32 0, align 4
@user_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_new_cluster() #0 {
  %1 = call i32 @get_db_and_rel_infos(i32* @new_cluster)
  %2 = call i32 (...) @check_new_cluster_is_empty()
  %3 = call i32 (...) @check_databases_are_compatible()
  %4 = call i32 (...) @check_loadable_libraries()
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_opts, i32 0, i32 0), align 4
  switch i32 %5, label %11 [
    i32 130, label %6
    i32 129, label %8
    i32 128, label %9
  ]

6:                                                ; preds = %0
  %7 = call i32 (...) @check_file_clone()
  br label %11

8:                                                ; preds = %0
  br label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @check_hard_link()
  br label %11

11:                                               ; preds = %0, %9, %8, %6
  %12 = call i32 @check_is_install_user(i32* @new_cluster)
  %13 = call i32 @check_for_prepared_transactions(i32* @new_cluster)
  ret void
}

declare dso_local i32 @get_db_and_rel_infos(i32*) #1

declare dso_local i32 @check_new_cluster_is_empty(...) #1

declare dso_local i32 @check_databases_are_compatible(...) #1

declare dso_local i32 @check_loadable_libraries(...) #1

declare dso_local i32 @check_file_clone(...) #1

declare dso_local i32 @check_hard_link(...) #1

declare dso_local i32 @check_is_install_user(i32*) #1

declare dso_local i32 @check_for_prepared_transactions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
