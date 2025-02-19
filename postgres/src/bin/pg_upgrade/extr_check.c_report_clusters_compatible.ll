; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_report_clusters_compatible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_report_clusters_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@user_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PG_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\0A*Clusters are compatible*\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"\0AIf pg_upgrade fails after this point, you must re-initdb the\0Anew cluster before continuing.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_clusters_compatible() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_opts, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @PG_REPORT, align 4
  %5 = call i32 @pg_log(i32 %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @stop_postmaster(i32 0)
  %7 = call i32 @exit(i32 0) #3
  unreachable

8:                                                ; preds = %0
  %9 = load i32, i32* @PG_REPORT, align 4
  %10 = call i32 @pg_log(i32 %9, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pg_log(i32, i8*) #1

declare dso_local i32 @stop_postmaster(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
