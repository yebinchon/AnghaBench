; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_service.c_UpdateSCMStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_service.c_UpdateSCMStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i32 }

@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@SERVICE_START_PENDING = common dso_local global i64 0, align 8
@SERVICE_STOP_PENDING = common dso_local global i64 0, align 8
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@SERVICE_ACCEPT_STOP = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_SHUTDOWN = common dso_local global i32 0, align 4
@ERROR_SERVICE_SPECIFIC_ERROR = common dso_local global i64 0, align 8
@hstatus = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to set service status\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @UpdateSCMStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateSCMStatus(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i32 %9, i32* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SERVICE_START_PENDING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SERVICE_STOP_PENDING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SERVICE_STOPPED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16, %3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @SERVICE_ACCEPT_STOP, align 4
  %28 = load i32, i32* @SERVICE_ACCEPT_PAUSE_CONTINUE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SERVICE_ACCEPT_SHUTDOWN, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i64 %37, i64* %38, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @ERROR_SERVICE_SPECIFIC_ERROR, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @hstatus, align 4
  %48 = call i32 @SetServiceStatus(i32 %47, %struct.TYPE_3__* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 (...) @KillService()
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @SetServiceStatus(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @KillService(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
