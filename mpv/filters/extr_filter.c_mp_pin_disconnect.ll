; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_disconnect.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { %struct.mp_pin*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_pin_disconnect(%struct.mp_pin* %0) #0 {
  %2 = alloca %struct.mp_pin*, align 8
  %3 = alloca %struct.mp_pin*, align 8
  store %struct.mp_pin* %0, %struct.mp_pin** %2, align 8
  %4 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %5 = call i32 @mp_pin_is_connected(%struct.mp_pin* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %10 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %12 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %11, i32 0, i32 0
  %13 = load %struct.mp_pin*, %struct.mp_pin** %12, align 8
  store %struct.mp_pin* %13, %struct.mp_pin** %3, align 8
  %14 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %15 = icmp ne %struct.mp_pin* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %18 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %17, i32 0, i32 0
  store %struct.mp_pin* null, %struct.mp_pin** %18, align 8
  %19 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %20 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %19, i32 0, i32 0
  store %struct.mp_pin* null, %struct.mp_pin** %20, align 8
  %21 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %22 = call i32 @deinit_connection(%struct.mp_pin* %21)
  br label %23

23:                                               ; preds = %16, %8
  %24 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %25 = call i32 @deinit_connection(%struct.mp_pin* %24)
  br label %26

26:                                               ; preds = %23, %7
  ret void
}

declare dso_local i32 @mp_pin_is_connected(%struct.mp_pin*) #1

declare dso_local i32 @deinit_connection(%struct.mp_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
