; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_keep_weak_gapless_format.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_keep_weak_gapless_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32 }

@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_aframe*, %struct.mp_aframe*)* @keep_weak_gapless_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_weak_gapless_format(%struct.mp_aframe* %0, %struct.mp_aframe* %1) #0 {
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca %struct.mp_aframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %10 = call %struct.mp_aframe* @mp_aframe_new_ref(%struct.mp_aframe* %9)
  store %struct.mp_aframe* %10, %struct.mp_aframe** %6, align 8
  %11 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %12 = icmp ne %struct.mp_aframe* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %17 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %19 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @af_format_conversion_score(i32 %20, i32 %21)
  %23 = load i64, i64* @INT_MIN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %36

26:                                               ; preds = %15
  %27 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mp_aframe_set_format(%struct.mp_aframe* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %34 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %35 = call i32 @mp_aframe_config_equals(%struct.mp_aframe* %33, %struct.mp_aframe* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %31, %25
  %37 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %38 = call i32 @talloc_free(%struct.mp_aframe* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.mp_aframe* @mp_aframe_new_ref(%struct.mp_aframe*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_aframe_get_format(%struct.mp_aframe*) #1

declare dso_local i64 @af_format_conversion_score(i32, i32) #1

declare dso_local i32 @mp_aframe_set_format(%struct.mp_aframe*, i32) #1

declare dso_local i32 @mp_aframe_config_equals(%struct.mp_aframe*, %struct.mp_aframe*) #1

declare dso_local i32 @talloc_free(%struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
