; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_reset_pin.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_reset_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MP_PIN_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_pin*)* @reset_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_pin(%struct.mp_pin* %0) #0 {
  %2 = alloca %struct.mp_pin*, align 8
  store %struct.mp_pin* %0, %struct.mp_pin** %2, align 8
  %3 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %4 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %9 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MP_PIN_OUT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7, %1
  %14 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %15 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %23 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %13, %7
  %30 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %31 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %30, i32 0, i32 2
  %32 = call i32 @mp_frame_unref(%struct.TYPE_2__* %31)
  %33 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %34 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_frame_unref(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
