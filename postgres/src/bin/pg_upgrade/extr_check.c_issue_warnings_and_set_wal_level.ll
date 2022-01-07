; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_issue_warnings_and_set_wal_level.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_issue_warnings_and_set_wal_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@new_cluster = common dso_local global i32 0, align 4
@old_cluster = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @issue_warnings_and_set_wal_level() #0 {
  %1 = call i32 @start_postmaster(i32* @new_cluster, i32 1)
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @old_cluster, i32 0, i32 0), align 4
  %3 = call i32 @GET_MAJOR_VERSION(i32 %2)
  %4 = icmp sle i32 %3, 804
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @new_9_0_populate_pg_largeobject_metadata(i32* @new_cluster, i32 0)
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @old_cluster, i32 0, i32 0), align 4
  %9 = call i32 @GET_MAJOR_VERSION(i32 %8)
  %10 = icmp sle i32 %9, 906
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @old_9_6_invalidate_hash_indexes(i32* @new_cluster, i32 0)
  br label %13

13:                                               ; preds = %11, %7
  %14 = call i32 @stop_postmaster(i32 0)
  ret void
}

declare dso_local i32 @start_postmaster(i32*, i32) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @new_9_0_populate_pg_largeobject_metadata(i32*, i32) #1

declare dso_local i32 @old_9_6_invalidate_hash_indexes(i32*, i32) #1

declare dso_local i32 @stop_postmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
