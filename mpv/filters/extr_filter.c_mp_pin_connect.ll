; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_connect.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_pin_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i64, %struct.mp_pin* }

@MP_PIN_OUT = common dso_local global i64 0, align 8
@MP_PIN_IN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_pin_connect(%struct.mp_pin* %0, %struct.mp_pin* %1) #0 {
  %3 = alloca %struct.mp_pin*, align 8
  %4 = alloca %struct.mp_pin*, align 8
  store %struct.mp_pin* %0, %struct.mp_pin** %3, align 8
  store %struct.mp_pin* %1, %struct.mp_pin** %4, align 8
  %5 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %6 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MP_PIN_OUT, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %13 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MP_PIN_IN, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %20 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %19, i32 0, i32 1
  %21 = load %struct.mp_pin*, %struct.mp_pin** %20, align 8
  %22 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %23 = icmp eq %struct.mp_pin* %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %26 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %25, i32 0, i32 1
  %27 = load %struct.mp_pin*, %struct.mp_pin** %26, align 8
  %28 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %29 = icmp eq %struct.mp_pin* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %34 = call i32 @mp_pin_disconnect(%struct.mp_pin* %33)
  %35 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %36 = call i32 @mp_pin_disconnect(%struct.mp_pin* %35)
  %37 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %38 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %39 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %38, i32 0, i32 1
  store %struct.mp_pin* %37, %struct.mp_pin** %39, align 8
  %40 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %41 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %42 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %41, i32 0, i32 1
  store %struct.mp_pin* %40, %struct.mp_pin** %42, align 8
  %43 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %44 = call i32 @init_connection(%struct.mp_pin* %43)
  br label %45

45:                                               ; preds = %32, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_pin_disconnect(%struct.mp_pin*) #1

declare dso_local i32 @init_connection(%struct.mp_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
