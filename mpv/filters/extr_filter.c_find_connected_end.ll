; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_find_connected_end.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_find_connected_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { %struct.mp_pin*, %struct.mp_pin* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_pin* (%struct.mp_pin*)* @find_connected_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_pin* @find_connected_end(%struct.mp_pin* %0) #0 {
  %2 = alloca %struct.mp_pin*, align 8
  %3 = alloca %struct.mp_pin*, align 8
  store %struct.mp_pin* %0, %struct.mp_pin** %2, align 8
  br label %4

4:                                                ; preds = %1, %14
  %5 = load %struct.mp_pin*, %struct.mp_pin** %2, align 8
  %6 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %5, i32 0, i32 1
  %7 = load %struct.mp_pin*, %struct.mp_pin** %6, align 8
  store %struct.mp_pin* %7, %struct.mp_pin** %3, align 8
  %8 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %9 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %8, i32 0, i32 0
  %10 = load %struct.mp_pin*, %struct.mp_pin** %9, align 8
  %11 = icmp ne %struct.mp_pin* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  ret %struct.mp_pin* %13

14:                                               ; preds = %4
  %15 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %16 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %15, i32 0, i32 0
  %17 = load %struct.mp_pin*, %struct.mp_pin** %16, align 8
  store %struct.mp_pin* %17, %struct.mp_pin** %2, align 8
  br label %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
