; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_InitializeMaxBackends.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_InitializeMaxBackends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxBackends = common dso_local global i64 0, align 8
@MaxConnections = common dso_local global i64 0, align 8
@autovacuum_max_workers = common dso_local global i64 0, align 8
@max_worker_processes = common dso_local global i64 0, align 8
@max_wal_senders = common dso_local global i64 0, align 8
@MAX_BACKENDS = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"too many backends configured\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeMaxBackends() #0 {
  %1 = load i64, i64* @MaxBackends, align 8
  %2 = icmp eq i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @Assert(i32 %3)
  %5 = load i64, i64* @MaxConnections, align 8
  %6 = load i64, i64* @autovacuum_max_workers, align 8
  %7 = add nsw i64 %5, %6
  %8 = add nsw i64 %7, 1
  %9 = load i64, i64* @max_worker_processes, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @max_wal_senders, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* @MaxBackends, align 8
  %13 = load i64, i64* @MaxBackends, align 8
  %14 = load i64, i64* @MAX_BACKENDS, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
