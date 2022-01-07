; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/extr_fatfs_port.c_get_fattime.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/extr_fatfs_port.c_get_fattime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fattime() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 (...) @pyb_rtc_get_seconds()
  %3 = call i32 @timeutils_seconds_since_2000_to_struct_time(i32 %2, %struct.TYPE_3__* %1)
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sub nsw i32 %5, 1980
  %7 = shl i32 %6, 25
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 21
  %11 = or i32 %7, %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 11
  %19 = or i32 %15, %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 5
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 1
  %27 = or i32 %23, %26
  ret i32 %27
}

declare dso_local i32 @timeutils_seconds_since_2000_to_struct_time(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pyb_rtc_get_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
