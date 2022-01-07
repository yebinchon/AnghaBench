; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_vusb.c_send_system.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/vusb/extr_vusb.c_send_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@send_system.last_data = internal global i64 0, align 8
@REPORT_ID_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @send_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_system(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @send_system.last_data, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* @send_system.last_data, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %13 = load i32, i32* @REPORT_ID_SYSTEM, align 4
  store i32 %13, i32* %12, align 8
  %14 = call i64 (...) @usbInterruptIsReady3()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = bitcast %struct.TYPE_2__* %3 to i8*
  %18 = call i32 @usbSetInterrupt3(i8* %17, i32 16)
  br label %19

19:                                               ; preds = %7, %16, %8
  ret void
}

declare dso_local i64 @usbInterruptIsReady3(...) #1

declare dso_local i32 @usbSetInterrupt3(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
