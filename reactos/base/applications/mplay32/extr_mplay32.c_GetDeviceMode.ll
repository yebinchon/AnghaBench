; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_GetDeviceMode.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_GetDeviceMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MCI_STATUS_MODE = common dso_local global i32 0, align 4
@wDeviceId = common dso_local global i32 0, align 4
@MCI_STATUS = common dso_local global i32 0, align 4
@MCI_WAIT = common dso_local global i32 0, align 4
@MCI_STATUS_ITEM = common dso_local global i32 0, align 4
@MCI_MODE_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetDeviceMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDeviceMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @MCI_STATUS_MODE, align 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @wDeviceId, align 4
  %9 = load i32, i32* @MCI_STATUS, align 4
  %10 = load i32, i32* @MCI_WAIT, align 4
  %11 = load i32, i32* @MCI_STATUS_ITEM, align 4
  %12 = or i32 %10, %11
  %13 = ptrtoint %struct.TYPE_2__* %5 to i32
  %14 = call i64 @mciSendCommand(i32 %8, i32 %9, i32 %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @ShowMCIError(i32 %18, i64 %19)
  %21 = load i32, i32* @MCI_MODE_NOT_READY, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @mciSendCommand(i32, i32, i32, i32) #1

declare dso_local i32 @ShowMCIError(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
