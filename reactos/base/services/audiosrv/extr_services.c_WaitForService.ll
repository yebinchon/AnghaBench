; ModuleID = '/home/carl/AnghaBench/reactos/base/services/audiosrv/extr_services.c_WaitForService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/audiosrv/extr_services.c_WaitForService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"QueryServiceStatusEx failed %x\0A\00", align 1
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Timeout while waiting for service to become ready %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitForService(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %12 = ptrtoint %struct.TYPE_2__* %8 to i32
  %13 = call i32 @QueryServiceStatusEx(i32 %10, i32 %11, i32 %12, i32 8, i32* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %32

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SERVICE_RUNNING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %18
  %26 = call i32 @Sleep(i32 1000)
  br label %27

27:                                               ; preds = %25
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %9, label %32

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @logmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @QueryServiceStatusEx(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @logmsg(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
