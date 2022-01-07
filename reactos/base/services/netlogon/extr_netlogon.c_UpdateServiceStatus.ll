; ModuleID = '/home/carl/AnghaBench/reactos/base/services/netlogon/extr_netlogon.c_UpdateServiceStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/netlogon/extr_netlogon.c_UpdateServiceStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i32 }

@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@ServiceStatus = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SERVICE_START_PENDING = common dso_local global i64 0, align 8
@SERVICE_STOP_PENDING = common dso_local global i64 0, align 8
@SERVICE_PAUSE_PENDING = common dso_local global i64 0, align 8
@SERVICE_CONTINUE_PENDING = common dso_local global i64 0, align 8
@ServiceStatusHandle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @UpdateServiceStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateServiceStatus(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 6), align 8
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 1), align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SERVICE_START_PENDING, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SERVICE_STOP_PENDING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @SERVICE_PAUSE_PENDING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @SERVICE_CONTINUE_PENDING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %9, %1
  store i32 10000, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 0), align 8
  br label %23

22:                                               ; preds = %17
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ServiceStatus, i32 0, i32 0), align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* @ServiceStatusHandle, align 4
  %25 = call i32 @SetServiceStatus(i32 %24, %struct.TYPE_3__* @ServiceStatus)
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @SetServiceStatus(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
