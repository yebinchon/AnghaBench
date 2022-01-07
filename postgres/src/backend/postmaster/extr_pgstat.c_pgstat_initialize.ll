; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyBackendId = common dso_local global i32 0, align 4
@InvalidBackendId = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i32 0, align 4
@BackendStatusArray = common dso_local global i32* null, align 8
@MyBEEntry = common dso_local global i32* null, align 8
@MyAuxProcType = common dso_local global i32 0, align 4
@NotAnAuxProcess = common dso_local global i32 0, align 4
@pgstat_beshutdown_hook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_initialize() #0 {
  %1 = load i32, i32* @MyBackendId, align 4
  %2 = load i32, i32* @InvalidBackendId, align 4
  %3 = icmp ne i32 %1, %2
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load i32, i32* @MyBackendId, align 4
  %6 = icmp sge i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @MyBackendId, align 4
  %9 = load i32, i32* @MaxBackends, align 4
  %10 = icmp sle i32 %8, %9
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32*, i32** @BackendStatusArray, align 8
  %16 = load i32, i32* @MyBackendId, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32* %19, i32** @MyBEEntry, align 8
  br label %32

20:                                               ; preds = %0
  %21 = load i32, i32* @MyAuxProcType, align 4
  %22 = load i32, i32* @NotAnAuxProcess, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32*, i32** @BackendStatusArray, align 8
  %27 = load i32, i32* @MaxBackends, align 4
  %28 = load i32, i32* @MyAuxProcType, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32* %31, i32** @MyBEEntry, align 8
  br label %32

32:                                               ; preds = %20, %11
  %33 = load i32, i32* @pgstat_beshutdown_hook, align 4
  %34 = call i32 @on_shmem_exit(i32 %33, i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
