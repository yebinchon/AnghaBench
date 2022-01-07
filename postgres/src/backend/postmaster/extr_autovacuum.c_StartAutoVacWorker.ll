; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_StartAutoVacWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_StartAutoVacWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not fork autovacuum worker process: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StartAutoVacWorker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @fork_process()
  store i64 %3, i64* %2, align 8
  switch i64 %3, label %12 [
    i64 -1, label %4
    i64 0, label %8
  ]

4:                                                ; preds = %0
  %5 = load i32, i32* @LOG, align 4
  %6 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @ereport(i32 %5, i32 %6)
  store i32 0, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = call i32 (...) @InitPostmasterChild()
  %10 = call i32 @ClosePostmasterPorts(i32 0)
  %11 = call i32 @AutoVacWorkerMain(i32 0, i32* null)
  br label %15

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  br label %16

15:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %12, %4
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @fork_process(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @InitPostmasterChild(...) #1

declare dso_local i32 @ClosePostmasterPorts(i32) #1

declare dso_local i32 @AutoVacWorkerMain(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
